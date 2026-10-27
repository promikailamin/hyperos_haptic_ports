.class Landroid/media/audiofx/PresetReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "PresetReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/PresetReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/PresetReverb;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/PresetReverb;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 9

    .line 187
    nop

    .line 189
    iget-object p1, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-static {p1}, Landroid/media/audiofx/PresetReverb;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 190
    :try_start_8
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-static {v0}, Landroid/media/audiofx/PresetReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 191
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-static {v0}, Landroid/media/audiofx/PresetReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    move-result-object v0

    goto :goto_18

    .line 190
    :cond_17
    const/4 v0, 0x0

    .line 193
    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_3d

    .line 194
    if-eqz v0, :cond_3c

    .line 195
    nop

    .line 196
    nop

    .line 198
    array-length p1, p3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v1, :cond_28

    .line 199
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_29

    .line 198
    :cond_28
    move p1, v3

    .line 201
    :goto_29
    array-length p3, p4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_32

    .line 202
    invoke-static {p4, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p3

    goto :goto_33

    .line 201
    :cond_32
    move p3, v3

    .line 204
    :goto_33
    if-eq p1, v3, :cond_3c

    if-eq p3, v3, :cond_3c

    .line 205
    iget-object p4, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-interface {v0, p4, p2, p1, p3}, Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/PresetReverb;IIS)V

    .line 208
    :cond_3c
    return-void

    .line 193
    :catchall_3d
    move-exception p2

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p2
.end method
