.class public Lmiui/tipclose/TipHelperProxy;
.super Ljava/lang/Object;
.source "TipHelperProxy.java"

# interfaces
.implements Lmiui/tipclose/IEarpieceTipHelper;
.implements Lmiui/tipclose/IFrontCameraTipHelper;


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist REAL_HELPER_CLASS_NAME:Ljava/lang/String; = "miui.tipclose.impl.TipHelpersManager"

.field private static final blacklist TAG:Ljava/lang/String; = "TipCloseScreen"

.field private static blacklist sInstance:Lmiui/tipclose/TipHelperProxy;


# instance fields
.field private blacklist mRealEarpieceTipHelper:Lmiui/tipclose/IEarpieceTipHelper;

.field private blacklist mRealFrontCameraTipHelper:Lmiui/tipclose/IFrontCameraTipHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lmiui/tipclose/TipHelperProxy;

    invoke-direct {v0}, Lmiui/tipclose/TipHelperProxy;-><init>()V

    sput-object v0, Lmiui/tipclose/TipHelperProxy;->sInstance:Lmiui/tipclose/TipHelperProxy;

    .line 24
    const-string v0, "tip.close.screen"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/tipclose/TipHelperProxy;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_3
    const-string v0, "miui.tipclose.impl.TipHelpersManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "realClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 30
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "realObj":Ljava/lang/Object;
    const-string v3, "TipCloseScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realObj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    instance-of v3, v2, Lmiui/tipclose/IFrontCameraTipHelper;

    if-eqz v3, :cond_3a

    .line 35
    move-object v3, v2

    check-cast v3, Lmiui/tipclose/IFrontCameraTipHelper;

    iput-object v3, p0, Lmiui/tipclose/TipHelperProxy;->mRealFrontCameraTipHelper:Lmiui/tipclose/IFrontCameraTipHelper;

    .line 37
    :cond_3a
    instance-of v3, v2, Lmiui/tipclose/IEarpieceTipHelper;

    if-eqz v3, :cond_57

    .line 38
    move-object v3, v2

    check-cast v3, Lmiui/tipclose/IEarpieceTipHelper;

    iput-object v3, p0, Lmiui/tipclose/TipHelperProxy;->mRealEarpieceTipHelper:Lmiui/tipclose/IEarpieceTipHelper;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_43} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_43} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_43} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_57

    .line 46
    .end local v0    # "realClass":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "realObj":Ljava/lang/Object;
    :catch_44
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_58

    .line 44
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_49
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_57

    .line 42
    :catch_4e
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_57

    .line 40
    :catch_53
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_57
    :goto_57
    nop

    .line 49
    :goto_58
    return-void
.end method

.method public static blacklist getInstance()Lmiui/tipclose/TipHelperProxy;
    .registers 1

    .line 52
    sget-object v0, Lmiui/tipclose/TipHelperProxy;->sInstance:Lmiui/tipclose/TipHelperProxy;

    return-object v0
.end method


# virtual methods
.method public blacklist hideTipForCamera()V
    .registers 2

    .line 85
    iget-object v0, p0, Lmiui/tipclose/TipHelperProxy;->mRealFrontCameraTipHelper:Lmiui/tipclose/IFrontCameraTipHelper;

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {v0}, Lmiui/tipclose/IFrontCameraTipHelper;->hideTipForCamera()V

    .line 88
    :cond_7
    return-void
.end method

.method public blacklist hideTipForPhone()V
    .registers 2

    .line 71
    iget-object v0, p0, Lmiui/tipclose/TipHelperProxy;->mRealEarpieceTipHelper:Lmiui/tipclose/IEarpieceTipHelper;

    if-eqz v0, :cond_7

    .line 72
    invoke-interface {v0}, Lmiui/tipclose/IEarpieceTipHelper;->hideTipForPhone()V

    .line 74
    :cond_7
    return-void
.end method

.method public blacklist isFoldDevice()Z
    .registers 4

    .line 91
    sget-boolean v0, Lmiui/tipclose/TipHelperProxy;->DEBUG:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 92
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "zizhan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cetus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1

    .line 94
    :cond_1c
    return v1
.end method

.method public blacklist showTipForCamera(Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackageName"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lmiui/tipclose/TipHelperProxy;->mRealFrontCameraTipHelper:Lmiui/tipclose/IFrontCameraTipHelper;

    if-eqz v0, :cond_7

    .line 79
    invoke-interface {v0, p1}, Lmiui/tipclose/IFrontCameraTipHelper;->showTipForCamera(Ljava/lang/String;)V

    .line 81
    :cond_7
    return-void
.end method

.method public blacklist showTipForPhone(ZII)V
    .registers 5
    .param p1, "speakeron"    # Z
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 57
    iget-object v0, p0, Lmiui/tipclose/TipHelperProxy;->mRealEarpieceTipHelper:Lmiui/tipclose/IEarpieceTipHelper;

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lmiui/tipclose/IEarpieceTipHelper;->showTipForPhone(ZII)V

    .line 60
    :cond_7
    return-void
.end method

.method public blacklist showTipForPhone(ZLjava/lang/String;)V
    .registers 4
    .param p1, "speakeron"    # Z
    .param p2, "callingPackagename"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lmiui/tipclose/TipHelperProxy;->mRealEarpieceTipHelper:Lmiui/tipclose/IEarpieceTipHelper;

    if-eqz v0, :cond_7

    .line 65
    invoke-interface {v0, p1, p2}, Lmiui/tipclose/IEarpieceTipHelper;->showTipForPhone(ZLjava/lang/String;)V

    .line 67
    :cond_7
    return-void
.end method
