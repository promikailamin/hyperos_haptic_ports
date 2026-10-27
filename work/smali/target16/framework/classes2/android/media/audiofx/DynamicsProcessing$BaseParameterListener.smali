.class Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/DynamicsProcessing;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/DynamicsProcessing;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2241
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 9

    .line 2246
    if-eqz p2, :cond_3

    .line 2247
    return-void

    .line 2249
    :cond_3
    nop

    .line 2250
    iget-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {p1}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2251
    :try_start_b
    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {p2}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 2252
    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {p2}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object p2

    goto :goto_1b

    .line 2251
    :cond_1a
    const/4 p2, 0x0

    .line 2254
    :goto_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_41

    .line 2255
    if-eqz p2, :cond_40

    .line 2256
    nop

    .line 2257
    nop

    .line 2259
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne p1, v1, :cond_2b

    .line 2260
    invoke-static {p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_2c

    .line 2259
    :cond_2b
    move p1, v2

    .line 2262
    :goto_2c
    array-length p3, p4

    const/high16 v3, -0x80000000

    if-ne p3, v1, :cond_36

    .line 2263
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    goto :goto_37

    .line 2262
    :cond_36
    move p3, v3

    .line 2265
    :goto_37
    if-eq p1, v2, :cond_40

    if-eq p3, v3, :cond_40

    .line 2266
    iget-object p4, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-interface {p2, p4, p1, p3}, Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/DynamicsProcessing;II)V

    .line 2269
    :cond_40
    return-void

    .line 2254
    :catchall_41
    move-exception p2

    :try_start_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p2
.end method
