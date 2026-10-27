.class Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableAnimatorUI"
.end annotation


# instance fields
.field private final greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIsInfinite:Z

.field private greylist-max-o mListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSet:Landroid/animation/AnimatorSet;

.field private blacklist mTotalDuration:J


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    .line 1142
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    .line 1147
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1148
    return-void
.end method

.method private greylist-max-o invalidateOwningView()V
    .registers 2

    .line 1278
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1279
    return-void
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o end()V
    .registers 2

    .line 1186
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1187
    return-void

    .line 1189
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1190
    return-void
.end method

.method public blacklist getTotalDuration()J
    .registers 3

    .line 1283
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mTotalDuration:J

    return-wide v0
.end method

.method public greylist-max-o init(Landroid/animation/AnimatorSet;)V
    .registers 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .line 1152
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_47

    .line 1159
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    .line 1160
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mTotalDuration:J

    .line 1161
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    .line 1164
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 1166
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1168
    .end local v0    # "i":I
    :cond_3e
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1171
    :cond_46
    return-void

    .line 1154
    :cond_47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isInfinite()Z
    .registers 2

    .line 1258
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    return v0
.end method

.method public greylist-max-o isRunning()Z
    .registers 2

    .line 1253
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isStarted()Z
    .registers 2

    .line 1248
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1241
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1242
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1244
    :cond_d
    return-void
.end method

.method public greylist-max-o pause()V
    .registers 2

    .line 1263
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1264
    return-void

    .line 1266
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 1267
    return-void
.end method

.method public greylist-max-o removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1229
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_d

    .line 1230
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 1231
    return-void

    .line 1233
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1235
    :cond_d
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1237
    :goto_10
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1195
    return-void

    .line 1197
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->start()V

    .line 1198
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1199
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 2

    .line 1271
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1272
    return-void

    .line 1274
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 1275
    return-void
.end method

.method public greylist-max-o reverse()V
    .registers 2

    .line 1203
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1204
    return-void

    .line 1206
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 1207
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1208
    return-void
.end method

.method public greylist-max-o setListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1217
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_15

    .line 1218
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 1219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1221
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1223
    :cond_15
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1225
    :goto_18
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 1177
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    .line 1180
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1181
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1182
    return-void

    .line 1178
    :cond_14
    :goto_14
    return-void
.end method
