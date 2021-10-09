def aiorun(awaitable):
    import asyncio
    return asyncio.get_event_loop().run_until_complete(awaitable)
