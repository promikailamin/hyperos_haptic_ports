.class Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/EnvironmentalReverb;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/EnvironmentalReverb;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 10

    .line 456
    nop

    .line 458
    iget-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 459
    :try_start_8
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 460
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v0

    goto :goto_18

    .line 459
    :cond_17
    const/4 v0, 0x0

    .line 462
    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_45

    .line 463
    if-eqz v0, :cond_44

    .line 464
    nop

    .line 465
    nop

    .line 467
    array-length p1, p3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v1, :cond_28

    .line 468
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_29

    .line 467
    :cond_28
    move p1, v3

    .line 470
    :goto_29
    array-length p3, p4

    const/4 v4, 0x2

    if-ne p3, v4, :cond_32

    .line 471
    invoke-static {p4, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p3

    goto :goto_3b

    .line 472
    :cond_32
    array-length p3, p4

    if-ne p3, v1, :cond_3a

    .line 473
    invoke-static {p4, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    goto :goto_3b

    .line 472
    :cond_3a
    move p3, v3

    .line 475
    :goto_3b
    if-eq p1, v3, :cond_44

    if-eq p3, v3, :cond_44

    .line 476
    iget-object p4, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-interface {v0, p4, p2, p1, p3}, Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/EnvironmentalReverb;III)V

    .line 479
    :cond_44
    return-void

    .line 462
    :catchall_45
    move-exception p2

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p2
.end method
