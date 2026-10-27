.class public Lmiui/util/XMAccountUtils;
.super Ljava/lang/Object;
.source "XMAccountUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isNumeric(Ljava/lang/String;)Z
    .registers 3
    .param p0, "account"    # Ljava/lang/String;

    .line 49
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 50
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static blacklist isXiaomiAccount(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_8
    const-string v0, "@xiaomi.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isXiaomiJID(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lmiui/util/XMAccountUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_8
    invoke-static {p0}, Lmiui/util/XMAccountUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Lmiui/util/XMAccountUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "account"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_8
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "index":I
    if-lez v0, :cond_16

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 70
    :cond_16
    return-object p0
.end method
