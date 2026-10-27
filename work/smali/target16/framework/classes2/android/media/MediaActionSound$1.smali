.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaActionSound;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 16

    .line 270
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-static {v0}, Landroid/media/MediaActionSound;->-$$Nest$fgetmSounds(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_8e

    aget-object v4, v0, v3

    .line 271
    iget v5, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    if-eq v5, p2, :cond_15

    .line 272
    nop

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 274
    :cond_15
    nop

    .line 275
    monitor-enter v4

    .line 276
    if-eqz p3, :cond_43

    .line 277
    :try_start_19
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 278
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 279
    const-string p1, "MediaActionSound"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnLoadCompleteListener() error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " loading sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v4

    return-void

    .line 283
    :cond_43
    iget p2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 p3, 0x3

    packed-switch p2, :pswitch_data_90

    .line 292
    const-string p2, "MediaActionSound"

    goto :goto_55

    .line 288
    :pswitch_4c
    iget v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 289
    iput p3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 290
    move v6, v2

    goto :goto_7a

    .line 285
    :pswitch_52
    iput p3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 286
    goto :goto_79

    .line 292
    :goto_55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnLoadCompleteListener() called in wrong state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " for sound: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_79
    move v6, v2

    :goto_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_19 .. :try_end_7b} :catchall_8a

    .line 297
    if-eqz v6, :cond_8e

    .line 298
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_8e

    .line 296
    :catchall_8a
    move-exception v0

    move-object p1, v0

    :try_start_8c
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8a

    throw p1

    .line 302
    :cond_8e
    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4c
    .end packed-switch
.end method
