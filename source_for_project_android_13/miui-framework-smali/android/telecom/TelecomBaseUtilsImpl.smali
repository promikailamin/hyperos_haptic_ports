.class public Landroid/telecom/TelecomBaseUtilsImpl;
.super Ljava/lang/Object;
.source "TelecomBaseUtilsImpl.java"

# interfaces
.implements Landroid/telecom/ITelecomBaseUtils;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelecomBaseUtilsImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 21
    const-string v0, "TelecomBaseUtilsImpl"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 25
    const-string v0, "TelecomBaseUtilsImpl"

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist canShowPrivateInfo()Z
    .registers 2

    .line 13
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    return v0
.end method

.method public blacklist getEmergencyDialerClassName()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "com.android.phone.EmergencyDialer"

    return-object v0
.end method
