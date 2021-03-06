



immutable(string) DUB_JSON = import("dub.json");
immutable(string) getDubStringValue(immutable(string) key)
{
    import std.json;
    JSONValue j = parseJSON(DUB_JSON);
    import std.conv : to;
    return j[key].str;
}
immutable(string) VERSION = mixin("getDubStringValue(\"version\")");
immutable(string) BUILD_TIME  = __TIMESTAMP__;
immutable(string) AUTHOR_NAME = "Federico Santamorena";
immutable(string) AUTHOR_URL  = "https://www.linkedin.com/in/yatima1460/";
immutable(string) GITHUB_URL  = mixin("getDubStringValue(\"homepage\")");
immutable(string) WEBSITE_URL = "https://www.drill.santamorena.me";

