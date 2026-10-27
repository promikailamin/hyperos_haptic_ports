.class public Landroid/telephony/TelephonyManager$ModemActivityInfoException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityInfoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$ModemActivityInfoException$ModemActivityInfoError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_INFO_RECEIVED:I = 0x2

.field public static final whitelist ERROR_MODEM_RESPONSE_ERROR:I = 0x3

.field public static final whitelist ERROR_PHONE_NOT_AVAILABLE:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 12154
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12155
    iput p1, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    .line 12156
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 12159
    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 12164
    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    packed-switch v0, :pswitch_data_14

    .line 12169
    const-string v0, "UNDEFINED"

    return-object v0

    .line 12168
    :pswitch_8
    const-string v0, "ERROR_MODEM_RESPONSE_ERROR"

    return-object v0

    .line 12167
    :pswitch_b
    const-string v0, "ERROR_INVALID_INFO_RECEIVED"

    return-object v0

    .line 12166
    :pswitch_e
    const-string v0, "ERROR_PHONE_NOT_AVAILABLE"

    return-object v0

    .line 12165
    :pswitch_11
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
