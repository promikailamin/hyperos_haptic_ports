.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/Equalizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 392
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12

    .line 396
    nop

    .line 398
    iget-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {p1}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 399
    :try_start_8
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 400
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v0

    move-object v1, v0

    goto :goto_1a

    .line 399
    :cond_18
    const/4 v0, 0x0

    move-object v1, v0

    .line 402
    :goto_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_5a

    .line 403
    if-eqz v1, :cond_59

    .line 404
    nop

    .line 405
    nop

    .line 406
    nop

    .line 408
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-lt p1, v2, :cond_39

    .line 409
    invoke-static {p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    .line 410
    array-length v4, p3

    const/16 v5, 0x8

    if-lt v4, v5, :cond_36

    .line 411
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    move v4, p1

    move v5, p3

    goto :goto_3b

    .line 410
    :cond_36
    move v4, p1

    move v5, v3

    goto :goto_3b

    .line 408
    :cond_39
    move v4, v3

    move v5, v4

    .line 414
    :goto_3b
    array-length p1, p4

    const/4 p3, 0x2

    if-ne p1, p3, :cond_45

    .line 415
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p1

    move v6, p1

    goto :goto_4f

    .line 416
    :cond_45
    array-length p1, p4

    if-ne p1, v2, :cond_4e

    .line 417
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    move v6, p1

    goto :goto_4f

    .line 416
    :cond_4e
    move v6, v3

    .line 420
    :goto_4f
    if-eq v4, v3, :cond_59

    if-eq v6, v3, :cond_59

    .line 421
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    move v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    .line 424
    :cond_59
    return-void

    .line 402
    :catchall_5a
    move-exception v0

    move-object p2, v0

    :try_start_5c
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5a

    throw p2
.end method
