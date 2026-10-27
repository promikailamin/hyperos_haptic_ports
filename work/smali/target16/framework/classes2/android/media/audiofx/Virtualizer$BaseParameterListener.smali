.class Landroid/media/audiofx/Virtualizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Virtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/Virtualizer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/Virtualizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 514
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 9

    .line 518
    nop

    .line 520
    iget-object p1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 521
    :try_start_8
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v0}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 522
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v0}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v0

    goto :goto_18

    .line 521
    :cond_17
    const/4 v0, 0x0

    .line 524
    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_3d

    .line 525
    if-eqz v0, :cond_3c

    .line 526
    nop

    .line 527
    nop

    .line 529
    array-length p1, p3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v1, :cond_28

    .line 530
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_29

    .line 529
    :cond_28
    move p1, v3

    .line 532
    :goto_29
    array-length p3, p4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_32

    .line 533
    invoke-static {p4, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p3

    goto :goto_33

    .line 532
    :cond_32
    move p3, v3

    .line 535
    :goto_33
    if-eq p1, v3, :cond_3c

    if-eq p3, v3, :cond_3c

    .line 536
    iget-object p4, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-interface {v0, p4, p2, p1, p3}, Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Virtualizer;IIS)V

    .line 539
    :cond_3c
    return-void

    .line 524
    :catchall_3d
    move-exception p2

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p2
.end method
