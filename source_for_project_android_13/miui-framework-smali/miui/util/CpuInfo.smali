.class public Lmiui/util/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"


# static fields
.field private static blacklist sCpuCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput v0, Lmiui/util/CpuInfo;->sCpuCount:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static blacklist getCpuCount()I
    .registers 7

    .line 21
    sget v0, Lmiui/util/CpuInfo;->sCpuCount:I

    if-nez v0, :cond_2d

    .line 22
    const-string v0, "cpu[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 23
    .local v0, "pattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 24
    .local v1, "count":I
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2b

    aget-object v5, v2, v4

    .line 25
    .local v5, "file":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 24
    .end local v5    # "file":Ljava/lang/String;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 29
    :cond_2b
    sput v1, Lmiui/util/CpuInfo;->sCpuCount:I

    .line 31
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    .end local v1    # "count":I
    :cond_2d
    sget v0, Lmiui/util/CpuInfo;->sCpuCount:I

    return v0
.end method
