.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I


# direct methods
.method private constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    .line 33
    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(I)V
    .registers 2

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(ILjava/lang/String;)V
    .registers 5

    .line 41
    if-nez p0, :cond_3

    .line 42
    return-void

    .line 44
    :cond_3
    const/4 v0, 0x6

    if-eq p0, v0, :cond_64

    .line 48
    nop

    .line 49
    packed-switch p0, :pswitch_data_6a

    .line 102
    :pswitch_a
    const-string v0, "Unknown CAS state exception"

    goto :goto_50

    .line 99
    :pswitch_d
    nop

    .line 100
    const-string v0, "Rebooting"

    goto :goto_50

    .line 96
    :pswitch_11
    nop

    .line 97
    const-string v0, "Blackout"

    goto :goto_50

    .line 93
    :pswitch_15
    nop

    .line 94
    const-string v0, "Card Invalid"

    goto :goto_50

    .line 90
    :pswitch_19
    nop

    .line 91
    const-string v0, "Card Muted"

    goto :goto_50

    .line 87
    :pswitch_1d
    nop

    .line 88
    const-string v0, "No Card"

    goto :goto_50

    .line 84
    :pswitch_21
    nop

    .line 85
    const-string v0, "Need Pairing"

    goto :goto_50

    .line 81
    :pswitch_25
    nop

    .line 82
    const-string v0, "Need Activation"

    goto :goto_50

    .line 51
    :pswitch_29
    nop

    .line 52
    const-string v0, "General CAS error"

    goto :goto_50

    .line 78
    :pswitch_2d
    nop

    .line 79
    const-string v0, "Decrypt error"

    goto :goto_50

    .line 75
    :pswitch_31
    nop

    .line 76
    const-string v0, "Not initialized"

    goto :goto_50

    .line 72
    :pswitch_35
    nop

    .line 73
    const-string v0, "Tamper detected"

    goto :goto_50

    .line 69
    :pswitch_39
    nop

    .line 70
    const-string v0, "Insufficient output protection"

    goto :goto_50

    .line 66
    :pswitch_3d
    nop

    .line 67
    const-string v0, "Invalid CAS state"

    goto :goto_50

    .line 63
    :pswitch_41
    nop

    .line 64
    const-string v0, "Unsupported scheme or data format"

    goto :goto_50

    .line 60
    :pswitch_45
    nop

    .line 61
    const-string v0, "Session not opened"

    goto :goto_50

    .line 57
    :pswitch_49
    nop

    .line 58
    const-string v0, "License expired"

    goto :goto_50

    .line 54
    :pswitch_4d
    nop

    .line 55
    const-string v0, "No license"

    .line 105
    :goto_50
    new-instance v1, Landroid/media/MediaCasStateException;

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s (err=%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_39
        :pswitch_35
        :pswitch_a
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorCode()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
