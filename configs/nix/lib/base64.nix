# https://discourse.nixos.org/t/decoding-base64-in-the-nix-language/33893/1
let
  # Helpers
  charAt = index: builtins.substring index 1;
  chunkBase64 = base64:
    (builtins.genList
      (index: builtins.substring (index * 4) 4 base64)
      (((builtins.stringLength base64) + 3) / 4)
    );
  concatStrings = builtins.concatStringsSep "";

  # Bitwise math
  truncateToByte = builtins.bitAnd 255;

  # ASCII decoding
  asciiTable = [
    ""  ""  ""   ""  ""  ""  ""  ""  ""  "\t" "\n" ""  ""  "\r" ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""   ""  ""  ""
    " " "!" "\"" "#" "$" "%" "&" "'" "(" ")"  "*"  "+" "," "-"  "." "/" "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" ":" ";" "<"  "=" ">" "?"
    "@" "A" "B"  "C" "D" "E" "F" "G" "H" "I"  "J"  "K" "L" "M"  "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "[" "\\" "]" "^" "_"
    "`" "a" "b"  "c" "d" "e" "f" "g" "h" "i"  "j"  "k" "l" "m"  "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "{" "|"  "}" "~" ""
  ];
  byteToAscii = value:
    if value < 128
    then
      let
        asciiValue = builtins.elemAt asciiTable value;
      in
        if asciiValue != ""
        then
          asciiValue
        else
          builtins.abort "unsupported character code ${toString value}"
    else
      builtins.abort "unsupported non-ascii byte ${toString value}";

  # Base64 encoding
  base64Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  base64Table = builtins.listToAttrs
    (map
      (character: { name = character.value; value = character.index; })
      (builtins.genList
        (index: { inherit index; value = (charAt index base64Alphabet); })
        (builtins.stringLength base64Alphabet)
      )
    );
  base64CharToValue = character:
    if builtins.hasAttr character base64Table
    then
      base64Table.${character}
    else
      builtins.abort("invalid base64 character ${character}");
  base64CalcByte = left: right: offset: chunk:
    (builtins.bitOr
      (truncateToByte ((base64CharToValue (charAt (offset) chunk)) * left))
      (truncateToByte ((base64CharToValue (charAt (offset + 1) chunk)) / right))
    );
  base64ChunkToBytes = chunk:
    if (
      ((builtins.stringLength chunk) == 2) ||
      (
        ((builtins.stringLength chunk) == 4) &&
        ((builtins.substring 2 2 chunk) == "==")
      )
    )
    then
      [
        (base64CalcByte 4 16 0 chunk)
      ]
    else
      if (
        ((builtins.stringLength chunk) == 3) ||
        (
          ((builtins.stringLength chunk) == 4) &&
          ((builtins.substring 3 1 chunk) == "=")
        )
      )
      then
        [
          (base64CalcByte 4 16 0 chunk)
          (base64CalcByte 16 4 1 chunk)
        ]
      else
        if (builtins.stringLength chunk) == 4
        then
          [
            (base64CalcByte 4 16 0 chunk)
            (base64CalcByte 16 4 1 chunk)
            (base64CalcByte 64 1 2 chunk)
          ]
        else
          builtins.abort "invalid base64 chunk ${chunk}";
  base64ToAscii = base64:
    concatStrings
      (map
        byteToAscii
        (builtins.concatMap
          base64ChunkToBytes
          (chunkBase64 base64)
        )
      );
in {
  decode = base64ToAscii;
}
