.class public Landroid/telecom/TelecomBaseUtilsStub;
.super Ljava/lang/Object;
.source "TelecomBaseUtilsStub.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelecomBaseUtilsStub"

.field private static volatile blacklist sInstance:Landroid/telecom/ITelecomBaseUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 14
    :try_start_0
    const-string v0, "android.telecom.TelecomBaseUtilsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    .local v0, "cls":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 16
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ITelecomBaseUtils;

    sput-object v1, Landroid/telecom/TelecomBaseUtilsStub;->sInstance:Landroid/telecom/ITelecomBaseUtils;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 20
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_22

    .line 18
    :catch_1c
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telecom/TelecomBaseUtilsStub;->logi(Ljava/lang/String;)V

    .line 21
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static blacklist canShowPrivateInfo()Z
    .registers 1

    .line 27
    sget-object v0, Landroid/telecom/TelecomBaseUtilsStub;->sInstance:Landroid/telecom/ITelecomBaseUtils;

    if-eqz v0, :cond_b

    .line 28
    sget-object v0, Landroid/telecom/TelecomBaseUtilsStub;->sInstance:Landroid/telecom/ITelecomBaseUtils;

    invoke-interface {v0}, Landroid/telecom/ITelecomBaseUtils;->canShowPrivateInfo()Z

    move-result v0

    return v0

    .line 30
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getEmergencyDialerClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "defaultName"    # Ljava/lang/String;

    .line 34
    sget-object v0, Landroid/telecom/TelecomBaseUtilsStub;->sInstance:Landroid/telecom/ITelecomBaseUtils;

    if-eqz v0, :cond_b

    .line 35
    sget-object v0, Landroid/telecom/TelecomBaseUtilsStub;->sInstance:Landroid/telecom/ITelecomBaseUtils;

    invoke-interface {v0}, Landroid/telecom/ITelecomBaseUtils;->getEmergencyDialerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_b
    return-object p0
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TelecomBaseUtilsStub"

    invoke-static {v1, p0, v0}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method
