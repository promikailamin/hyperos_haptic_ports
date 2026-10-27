.class public Landroid/telephony/MiuiSignalStrengthStub;
.super Ljava/lang/Object;
.source "MiuiSignalStrengthStub.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiSignalStrengthStub"

.field public static final blacklist SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field private static volatile blacklist sInstance:Landroid/telephony/IMiuiSignalStrength;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 45
    :try_start_0
    const-string v0, "android.telephony.MiuiSignalStrengthImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "cls":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 47
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IMiuiSignalStrength;

    sput-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 51
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_22

    .line 49
    :catch_1c
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiSignalStrengthStub;->logi(Ljava/lang/String;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 68
    const-string v0, "MiuiSignalStrengthStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I
    .registers 5
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "css"    # Landroid/telephony/CellSignalStrength;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "miuiLevel":I
    sget-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;

    if-eqz v1, :cond_b

    .line 62
    sget-object v1, Landroid/telephony/MiuiSignalStrengthStub;->sInstance:Landroid/telephony/IMiuiSignalStrength;

    invoke-interface {v1, p0, p1, p2}, Landroid/telephony/IMiuiSignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I

    move-result v0

    .line 64
    :cond_b
    return v0
.end method
