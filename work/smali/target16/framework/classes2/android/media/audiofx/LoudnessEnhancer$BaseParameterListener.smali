.class Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;
.super Ljava/lang/Object;
.source "LoudnessEnhancer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/LoudnessEnhancer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 9

    .line 168
    if-eqz p2, :cond_3

    .line 169
    return-void

    .line 171
    :cond_3
    nop

    .line 172
    iget-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {p1}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 173
    :try_start_b
    iget-object p2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {p2}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 174
    iget-object p2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {p2}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object p2

    goto :goto_1b

    .line 173
    :cond_1a
    const/4 p2, 0x0

    .line 176
    :goto_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_41

    .line 177
    if-eqz p2, :cond_40

    .line 178
    nop

    .line 179
    nop

    .line 181
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne p1, v1, :cond_2b

    .line 182
    invoke-static {p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_2c

    .line 181
    :cond_2b
    move p1, v2

    .line 184
    :goto_2c
    array-length p3, p4

    const/high16 v3, -0x80000000

    if-ne p3, v1, :cond_36

    .line 185
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    goto :goto_37

    .line 184
    :cond_36
    move p3, v3

    .line 187
    :goto_37
    if-eq p1, v2, :cond_40

    if-eq p3, v3, :cond_40

    .line 188
    iget-object p4, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-interface {p2, p4, p1, p3}, Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/LoudnessEnhancer;II)V

    .line 191
    :cond_40
    return-void

    .line 176
    :catchall_41
    move-exception p2

    :try_start_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p2
.end method
