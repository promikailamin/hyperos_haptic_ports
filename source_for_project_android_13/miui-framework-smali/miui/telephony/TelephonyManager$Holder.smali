.class Lmiui/telephony/TelephonyManager$Holder;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lmiui/telephony/TelephonyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    invoke-static {}, Lmiui/telephony/TelephonyManager$Holder;->getTelephonyManager()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getTelephonyManager()Lmiui/telephony/TelephonyManager;
    .registers 4

    .line 39
    :try_start_0
    const-string v0, "miui.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/TelephonyManager;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v2

    .line 43
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TeleMgr"

    const-string v2, "failed to initialize miui instance ..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/telephony/TelephonyManagerAndroidImpl;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
