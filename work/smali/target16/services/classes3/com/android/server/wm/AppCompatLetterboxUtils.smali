.class public abstract Lcom/android/server/wm/AppCompatLetterboxUtils;
.super Ljava/lang/Object;
.source "AppCompatLetterboxUtils.java"


# direct methods
.method public static calculateLetterboxInnerBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 97
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 98
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_25

    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 99
    :goto_25
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static calculateLetterboxOuterBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 62
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_32

    .line 65
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_32

    .line 67
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    :goto_32
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static calculateLetterboxPosition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Point;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Point;->set(II)V

    return-void

    .line 39
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public static fullyContainsOrNotIntersects(Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z
    .registers 10

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_5
    const/4 v5, 0x1

    if-ge v2, v0, :cond_26

    aget-object v6, p1, v2

    .line 116
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 119
    :cond_13
    invoke-static {v6, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_1c

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 122
    :cond_1c
    invoke-virtual {v6, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_23

    return v5

    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    add-int/2addr v3, v4

    .line 127
    array-length p0, p1

    if-ne v3, p0, :cond_2b

    return v5

    :cond_2b
    return v1
.end method
