.class public Lmiui/os/GlobalOperator;
.super Ljava/lang/Object;
.source "GlobalOperator.java"


# static fields
.field private static final blacklist GLOBAL_OPERATOR_NAME:Ljava/lang/String;

.field private static final blacklist IS_SINGLE_SIM:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7
    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/GlobalOperator;->GLOBAL_OPERATOR_NAME:Ljava/lang/String;

    .line 8
    const-string v0, "ro.miui.singlesim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/GlobalOperator;->IS_SINGLE_SIM:Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate GlobalOperator"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getName()Ljava/lang/String;
    .registers 2

    .line 19
    sget-object v0, Lmiui/os/GlobalOperator;->GLOBAL_OPERATOR_NAME:Ljava/lang/String;

    const-string v1, "ru"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 20
    const-string v0, ""

    return-object v0

    .line 22
    :cond_d
    return-object v0
.end method

.method public static whitelist isSingleSim()Z
    .registers 2

    .line 27
    sget-object v0, Lmiui/os/GlobalOperator;->IS_SINGLE_SIM:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
