.class public Landroid/media/audiofx/AutomaticGainControl;
.super Landroid/media/audiofx/AudioEffect;
.source "AutomaticGainControl.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutomaticGainControl"


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 94
    sget-object v0, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 95
    return-void
.end method

.method public static whitelist create(I)Landroid/media/audiofx/AutomaticGainControl;
    .registers 4

    .line 62
    const-string v0, "AutomaticGainControl"

    .line 64
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Landroid/media/audiofx/AutomaticGainControl;

    invoke-direct {v2, p0}, Landroid/media/audiofx/AutomaticGainControl;-><init>(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    .line 71
    move-object v1, v2

    goto :goto_30

    .line 69
    :catch_a
    move-exception p0

    .line 70
    const-string p0, "not enough memory"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 67
    :catch_11
    move-exception p0

    .line 68
    const-string p0, "not enough resources"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 65
    :catch_18
    move-exception p0

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented on this device "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_2f
    nop

    .line 72
    :goto_30
    return-object v1
.end method

.method public static whitelist isAvailable()Z
    .registers 1

    .line 51
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
