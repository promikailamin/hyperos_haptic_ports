.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.source "LayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;


# instance fields
.field blacklist mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .registers 8

    .line 45
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 35
    move-object p1, p0

    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 46
    return-void
.end method

.method private blacklist hasHorizontalScroll()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method private blacklist hasVerticalScroll()Z
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method

.method private blacklist measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 23

    .line 145
    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p4

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 148
    nop

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 151
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v2, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v5

    move v10, v2

    goto :goto_3c

    .line 151
    :cond_3b
    move v10, v2

    .line 154
    :goto_3c
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v2, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v2, v4

    move v11, v2

    goto :goto_55

    .line 154
    :cond_54
    move v11, v4

    .line 158
    :goto_55
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v2, v10, v2

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float/2addr v2, v4

    .line 159
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v4, v11, v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float/2addr v4, v5

    .line 161
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v12

    .line 162
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v13

    .line 163
    const/4 v14, 0x0

    if-nez v12, :cond_7c

    if-eqz v13, :cond_75

    goto :goto_7c

    .line 188
    :cond_75
    const/4 v5, 0x0

    move-object/from16 v6, p6

    move v15, v2

    move v2, v3

    move v3, v4

    goto :goto_cf

    .line 164
    :cond_7c
    :goto_7c
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 165
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 166
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v1

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 171
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 166
    move-object/from16 v6, p6

    move v3, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    move v15, v2

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    .line 175
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v2, v1, :cond_b2

    .line 177
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    .line 179
    :cond_b2
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v1

    .line 180
    if-eqz v12, :cond_c0

    .line 181
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 183
    :cond_c0
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    .line 184
    if-eqz v13, :cond_ce

    .line 185
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 187
    :cond_ce
    const/4 v5, 0x1

    .line 191
    :goto_cf
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 192
    move v1, v10

    goto :goto_f5

    .line 193
    :cond_d7
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 194
    nop

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_f5

    .line 197
    :cond_ed
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 198
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 200
    :goto_f5
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 201
    move v2, v11

    goto :goto_11b

    .line 202
    :cond_fd
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 203
    nop

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_11b

    .line 206
    :cond_113
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 207
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 209
    :goto_11b
    cmpl-float v4, v8, v10

    if-nez v4, :cond_121

    .line 210
    move v8, v10

    goto :goto_122

    .line 209
    :cond_121
    move v8, v1

    .line 212
    :goto_122
    cmpl-float v1, v9, v11

    if-nez v1, :cond_128

    .line 213
    move v9, v11

    goto :goto_129

    .line 212
    :cond_128
    move v9, v2

    .line 216
    :goto_129
    if-nez v5, :cond_1ea

    .line 217
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 218
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 219
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 220
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move v1, v11

    move v11, v3

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 228
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    .line 229
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 230
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 231
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto :goto_178

    .line 233
    :cond_166
    nop

    .line 236
    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 238
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 233
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 241
    :goto_178
    move-object/from16 v6, p6

    move v10, v8

    goto/16 :goto_1eb

    :cond_17d
    move v11, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 242
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 243
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 244
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v2, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 246
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 247
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 248
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 249
    move v10, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v9, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_1cc

    .line 251
    :cond_1ba
    move v10, v8

    .line 254
    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 256
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 251
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 259
    :goto_1cc
    move-object/from16 v6, p6

    goto :goto_1eb

    .line 260
    :cond_1cf
    move v10, v8

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v8, v10, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v8, v1

    .line 261
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v9, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    .line 262
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_1eb

    .line 216
    :cond_1ea
    move v10, v8

    .line 266
    :goto_1eb
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_201

    .line 267
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 269
    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 270
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 271
    invoke-virtual {v1, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 274
    :cond_201
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 276
    invoke-virtual {v1, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 277
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 279
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 280
    return-void
.end method

.method private blacklist measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 23

    .line 290
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 291
    nop

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 294
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v2, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v5

    .line 297
    :cond_35
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v4, v5

    .line 300
    :cond_4b
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v5

    .line 301
    if-eqz v5, :cond_67

    .line 302
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v6

    move/from16 v7, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 303
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v8, v6

    goto :goto_6a

    .line 301
    :cond_67
    move/from16 v7, p2

    move v8, v7

    .line 305
    :goto_6a
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v5

    .line 306
    if-eqz v5, :cond_86

    .line 307
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v6

    move/from16 v7, p4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 308
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v9, v6

    goto :goto_89

    .line 306
    :cond_86
    move/from16 v7, p4

    move v9, v7

    .line 311
    :goto_89
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v5, v2, v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v10, v5, v6

    .line 312
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v5, v4, v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v11, v5, v6

    .line 314
    nop

    .line 315
    nop

    .line 317
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_a6

    .line 318
    move v1, v2

    move v12, v7

    goto :goto_da

    .line 319
    :cond_a6
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 320
    nop

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v12, v7

    goto :goto_da

    .line 323
    :cond_bd
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 324
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 325
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v5

    if-nez v5, :cond_d8

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_d6

    goto :goto_d8

    :cond_d6
    move v5, v7

    goto :goto_d9

    :cond_d8
    :goto_d8
    move v5, v6

    :goto_d9
    move v12, v5

    .line 328
    :goto_da
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 329
    move v3, v4

    move v13, v7

    goto :goto_115

    .line 330
    :cond_e3
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 331
    nop

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v13, v7

    goto :goto_115

    .line 334
    :cond_fa
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 335
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 336
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    if-nez v5, :cond_114

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_113

    goto :goto_114

    :cond_113
    move v6, v7

    :cond_114
    :goto_114
    move v13, v6

    .line 339
    :goto_115
    cmpl-float v5, v8, v2

    if-nez v5, :cond_11b

    .line 340
    move v14, v2

    goto :goto_11c

    .line 339
    :cond_11b
    move v14, v1

    .line 342
    :goto_11c
    cmpl-float v1, v9, v4

    if-nez v1, :cond_122

    .line 343
    move v15, v4

    goto :goto_123

    .line 342
    :cond_122
    move v15, v3

    .line 346
    :goto_123
    const/4 v1, 0x0

    if-nez v12, :cond_1e4

    if-eqz v13, :cond_12a

    goto/16 :goto_1e4

    .line 373
    :cond_12a
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 374
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 375
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 376
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v4

    const/4 v4, 0x0

    move-object/from16 v6, p6

    move v12, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 384
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    .line 385
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 386
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 387
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v14, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto :goto_178

    .line 389
    :cond_166
    nop

    .line 392
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 394
    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 389
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 397
    :goto_178
    goto :goto_1e0

    :cond_179
    move v12, v1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 398
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 399
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 400
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 402
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 403
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 404
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 405
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v15, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_1c6

    .line 407
    :cond_1b4
    nop

    .line 410
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 412
    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 407
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 415
    :goto_1c6
    goto :goto_1e0

    .line 416
    :cond_1c7
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v14, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v1, v2

    .line 417
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v15, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    .line 418
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 422
    :goto_1e0
    move-object/from16 v6, p6

    move v10, v12

    goto :goto_23f

    .line 347
    :cond_1e4
    :goto_1e4
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 348
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 349
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 353
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v4

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 354
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 349
    move-object/from16 v6, p6

    move v2, v10

    move v3, v11

    move v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 357
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    .line 358
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v2

    if-eqz v2, :cond_21a

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v2, v1, :cond_21a

    .line 360
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    .line 362
    :cond_21a
    if-eqz v12, :cond_22c

    .line 363
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v1

    .line 364
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 365
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 367
    :cond_22c
    if-eqz v13, :cond_23e

    .line 368
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v1

    .line 369
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 370
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 372
    :cond_23e
    nop

    .line 422
    :goto_23f
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_255

    .line 423
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 424
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 425
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 426
    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 427
    invoke-virtual {v1, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 430
    :cond_255
    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 431
    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 433
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 434
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 435
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 436
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 438
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 439
    return-void
.end method


# virtual methods
.method public blacklist applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z
    .registers 4

    .line 57
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist childrenHaveHorizontalWeights()Z
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 108
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_2a

    .line 109
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 110
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 111
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_2a
    goto :goto_6

    .line 115
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist childrenHaveVerticalWeights()Z
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 120
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_2a

    .line 121
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 122
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 123
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_2a
    goto :goto_6

    .line 127
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7

    .line 104
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 8

    .line 75
    return-void
.end method

.method protected blacklist hasHorizontalIntrinsicDimension()Z
    .registers 2

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method protected blacklist hasVerticalIntrinsicDimension()Z
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 3

    .line 63
    return-void
.end method

.method public blacklist isInHorizontalFill()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist isInVerticalFill()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 6

    .line 477
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 478
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {v1, p1, p0, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 482
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 483
    goto :goto_1a

    .line 484
    :cond_2a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 485
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10

    .line 451
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->supportsVersion(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 452
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_10

    .line 454
    :cond_d
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 456
    :goto_10
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 81
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 82
    goto :goto_a

    .line 83
    :cond_1f
    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 90
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 91
    goto :goto_a

    .line 92
    :cond_1f
    return v0
.end method

.method public blacklist selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 5

    .line 494
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 495
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p2

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 498
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 499
    return-void
.end method
