.class Lcom/xiaomi/engine/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/xiaomi/engine/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/Util;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist assertOrNot(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "status"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_2e

    .line 26
    invoke-static {p0}, Lcom/xiaomi/engine/Util;->toStatusDescription(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "desc":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object v2, v4, v1

    const-string v0, "%s: error %s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 23
    .end local v2    # "desc":Ljava/lang/String;
    :pswitch_1c
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "%s: succeed"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    nop

    .line 30
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist dumpMetaDataToLog(Ljava/lang/Object;)V
    .registers 6
    .param p0, "cameraMetadataNative"    # Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/xiaomi/engine/Util;->TAG:Ljava/lang/String;

    const-string v1, "dumpMetaDataToLog: ==============================================="

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "cameraMetaDataNativeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "dumpToLog"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    .local v2, "dumpToLog":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1b

    .line 62
    nop

    .end local v0    # "cameraMetaDataNativeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "dumpToLog":Ljava/lang/reflect/Method;
    goto :goto_23

    .line 59
    :catch_1b
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/engine/Util;->TAG:Ljava/lang/String;

    const-string v3, "dumpMetaDataToLog: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    sget-object v0, Lcom/xiaomi/engine/Util;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private static blacklist toStatusDescription(I)Ljava/lang/String;
    .registers 3
    .param p0, "status"    # I

    .line 33
    sparse-switch p0, :sswitch_data_2c

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ERROR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :sswitch_17
    const-string v0, "OK"

    return-object v0

    .line 47
    :sswitch_1a
    const-string v0, "INVALID_CALL"

    return-object v0

    .line 45
    :sswitch_1d
    const-string v0, "OPEN_FAILED"

    return-object v0

    .line 43
    :sswitch_20
    const-string v0, "UNMAP_FAILED"

    return-object v0

    .line 41
    :sswitch_23
    const-string v0, "MAP_FAILED"

    return-object v0

    .line 39
    :sswitch_26
    const-string v0, "NO_MEMORY"

    return-object v0

    .line 37
    :sswitch_29
    const-string v0, "INVALID_PARAM"

    return-object v0

    :sswitch_data_2c
    .sparse-switch
        -0x7fffffff -> :sswitch_29
        -0x7ffffffe -> :sswitch_26
        -0x7ffffffd -> :sswitch_23
        -0x7ffffffc -> :sswitch_20
        -0x7ffffffb -> :sswitch_1d
        -0x7ffffffa -> :sswitch_1a
        0x0 -> :sswitch_17
    .end sparse-switch
.end method
