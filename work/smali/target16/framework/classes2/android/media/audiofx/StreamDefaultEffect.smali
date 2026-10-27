.class public Landroid/media/audiofx/StreamDefaultEffect;
.super Landroid/media/audiofx/DefaultEffect;
.source "StreamDefaultEffect.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StreamDefaultEffect-JAVA"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 13

    .line 63
    invoke-direct {p0}, Landroid/media/audiofx/DefaultEffect;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 65
    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/audiofx/StreamDefaultEffect;->native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p2

    .line 71
    if-eqz p2, :cond_6f

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error code "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " when initializing StreamDefaultEffect"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "StreamDefaultEffect-JAVA"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    packed-switch p2, :pswitch_data_76

    .line 81
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot initialize effect engine for type: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " Error: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 75
    :pswitch_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream usage, type uuid, or implementation uuid not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :pswitch_67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Effect library not loaded"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_6f
    const/4 p1, 0x0

    aget p1, v7, p1

    iput p1, v1, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    .line 88
    return-void

    nop

    :pswitch_data_76
    .packed-switch -0x5
        :pswitch_67
        :pswitch_5f
    .end packed-switch
.end method

.method private final native blacklist native_release(I)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 102
    invoke-virtual {p0}, Landroid/media/audiofx/StreamDefaultEffect;->release()V

    .line 103
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 97
    iget v0, p0, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    invoke-direct {p0, v0}, Landroid/media/audiofx/StreamDefaultEffect;->native_release(I)V

    .line 98
    return-void
.end method
