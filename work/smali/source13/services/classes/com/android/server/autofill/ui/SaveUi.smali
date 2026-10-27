.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final SCROLL_BAR_DEFAULT_DELAY_BEFORE_FADE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SaveUi"

.field private static final THEME_ID_DARK:I = 0x10303ea

.field private static final THEME_ID_LIGHT:I = 0x10303f5


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mThemeId:I

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mType:I


# direct methods
.method static bridge synthetic -$$Nest$mstartIntentSenderWithRestore(Lcom/android/server/autofill/ui/SaveUi;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
    .registers 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p10, "listener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    .param p11, "nightMode"    # Z
    .param p12, "isUpdate"    # Z
    .param p13, "compatMode"    # Z

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v4, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v4}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 181
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v5, "SaveUi"

    if-eqz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nightMode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_35
    if-eqz v3, :cond_3b

    const v4, 0x10303ea

    goto :goto_3e

    :cond_3b
    const v4, 0x10303f5

    :goto_3e
    iput v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 183
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 184
    new-instance v7, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v8, p10

    invoke-direct {v7, v0, v8}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 185
    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 186
    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 187
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 188
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 191
    const-string v9, "com.miui.contentcatcher"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v13, -0x1

    if-eqz v9, :cond_a3

    .line 192
    const-string v4, "Miui Autofill"

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentcatcher:mSubTitle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/android/server/autofill/ui/SaveUiStub;->getInstance()Lcom/android/server/autofill/ui/SaveUiStub;

    move-result-object v9

    new-instance v12, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    new-instance v5, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    move-object/from16 v10, p1

    move-object/from16 v11, p9

    move v1, v13

    move-object v13, v4

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/ui/SaveUiStub;->showDialog(Landroid/content/Context;Lcom/android/server/autofill/ui/OverlayControl;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 198
    iput v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 199
    return-void

    .line 202
    :cond_a3
    move v1, v13

    new-instance v9, Lcom/android/server/autofill/ui/SaveUi$1;

    move-object/from16 v10, p1

    invoke-direct {v9, v0, v10, v4}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V

    .line 239
    .end local p1    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 240
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x1090046

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 242
    .local v11, "view":Landroid/view/View;
    const v13, 0x102020d

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 244
    .local v13, "titleView":Landroid/widget/TextView;
    new-instance v14, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v14, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 245
    .local v14, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v12

    iput v12, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 247
    and-int/lit8 v16, v12, 0x1

    if-eqz v16, :cond_da

    .line 248
    const v1, 0x10401b0

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_da
    and-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_e8

    .line 251
    const v1, 0x10401ab

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_e8
    const/16 v1, 0x64

    .line 258
    .local v1, "cardTypeMask":I
    and-int/lit8 v17, v12, 0x64

    move/from16 v18, v1

    .end local v1    # "cardTypeMask":I
    .local v18, "cardTypeMask":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 259
    .local v1, "count":I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_127

    and-int/lit16 v3, v12, 0x80

    if-eqz v3, :cond_fa

    goto :goto_127

    .line 261
    :cond_fa
    and-int/lit8 v3, v12, 0x40

    if-eqz v3, :cond_109

    .line 262
    const v3, 0x10401b1

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 263
    :cond_109
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_118

    .line 264
    const v3, 0x10401ac

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 265
    :cond_118
    and-int/lit8 v3, v12, 0x20

    if-eqz v3, :cond_131

    .line 266
    const v3, 0x10401ad

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 260
    :cond_127
    :goto_127
    const v3, 0x10401af

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_131
    :goto_131
    and-int/lit8 v3, v12, 0x8

    if-eqz v3, :cond_13f

    .line 269
    const v3, 0x10401b2

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_13f
    const/16 v3, 0x10

    and-int/2addr v12, v3

    if-eqz v12, :cond_14e

    .line 272
    const v12, 0x10401ae

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_14e
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v12

    packed-switch v12, :pswitch_data_31e

    .line 296
    move/from16 v21, v1

    .line 297
    .end local v1    # "count":I
    .local v21, "count":I
    if-eqz p12, :cond_1e0

    const v1, 0x10401b8

    goto/16 :goto_1e3

    .line 289
    .end local v21    # "count":I
    .restart local v1    # "count":I
    :pswitch_15e
    nop

    .line 290
    if-eqz p12, :cond_165

    const v12, 0x10401ba

    goto :goto_168

    .line 291
    :cond_165
    const v12, 0x10401a9

    :goto_168
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 292
    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "count":I
    .restart local v21    # "count":I
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v3, v1

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v3, v1

    const/4 v1, 0x3

    aput-object p3, v3, v1

    .line 289
    invoke-virtual {v9, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 293
    goto :goto_1f3

    .line 283
    .end local v21    # "count":I
    .restart local v1    # "count":I
    :pswitch_191
    move/from16 v21, v1

    .line 284
    .end local v1    # "count":I
    .restart local v21    # "count":I
    if-eqz p12, :cond_199

    const v1, 0x10401b9

    goto :goto_19c

    .line 285
    :cond_199
    const v1, 0x10401a8

    :goto_19c
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 286
    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v12

    const/4 v12, 0x1

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v12

    const/4 v12, 0x2

    aput-object p3, v3, v12

    .line 283
    invoke-virtual {v9, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 287
    goto :goto_1f3

    .line 277
    .end local v21    # "count":I
    .restart local v1    # "count":I
    :pswitch_1bc
    move/from16 v21, v1

    .line 278
    .end local v1    # "count":I
    .restart local v21    # "count":I
    if-eqz p12, :cond_1c4

    const v1, 0x10401bb

    goto :goto_1c7

    .line 279
    :cond_1c4
    const v1, 0x10401aa

    :goto_1c7
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 280
    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v12

    const/16 v16, 0x1

    aput-object p3, v3, v16

    .line 277
    invoke-virtual {v9, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 281
    goto :goto_1f3

    .line 298
    :cond_1e0
    const v1, 0x10401a7

    :goto_1e3
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v12, v3

    .line 297
    invoke-virtual {v9, v1, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 301
    :goto_1f3
    iget-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    move-object/from16 v1, p4

    invoke-direct {v0, v9, v11, v1}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 305
    nop

    .line 306
    move-object/from16 v3, p8

    invoke-direct {v0, v9, v11, v3, v2}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v12

    .line 307
    .local v12, "hasCustomDescription":Z
    if-eqz v12, :cond_216

    .line 308
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 309
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_213

    const-string/jumbo v1, "on constructor: applied custom description"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_213
    move-object/from16 p1, v10

    goto :goto_276

    .line 311
    :cond_216
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 312
    if-eqz v1, :cond_24d

    .line 313
    const/16 v3, 0x46b

    invoke-direct {v0, v3}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    .line 314
    const v3, 0x102020a

    .line 315
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 316
    .local v3, "subtitleContainer":Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v6, "subtitleView":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-direct {v0, v6}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 319
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    move-object/from16 p1, v10

    const/4 v10, -0x1

    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .local p1, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {v7, v10, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    const/16 v7, 0x1f4

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V

    goto :goto_24f

    .line 312
    .end local v3    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v6    # "subtitleView":Landroid/widget/TextView;
    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_24d
    move-object/from16 p1, v10

    .line 326
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local p1    # "inflater":Landroid/view/LayoutInflater;
    :goto_24f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_276

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on constructor: title="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", subTitle="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_276
    :goto_276
    const v1, 0x102020c

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    .local v1, "noButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v3

    .line 331
    .local v3, "negativeActionStyle":I
    packed-switch v3, :pswitch_data_328

    .line 340
    const v5, 0x10401a5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_29b

    .line 336
    :pswitch_28d
    const v5, 0x10401a4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 337
    goto :goto_29b

    .line 333
    :pswitch_294
    const v5, 0x10401a6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 334
    nop

    .line 342
    :goto_29b
    new-instance v5, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v5, 0x102020e

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 345
    .local v5, "yesButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getPositiveActionStyle()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2ba

    .line 346
    const v6, 0x1040180

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c2

    .line 347
    :cond_2ba
    if-eqz p12, :cond_2c2

    .line 348
    const v6, 0x10401bc

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_2c2
    :goto_2c2
    new-instance v6, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v9, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 353
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 357
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 359
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 360
    .local v4, "window":Landroid/view/Window;
    const/16 v6, 0x7f6

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 361
    const v6, 0x20002

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 363
    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 364
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 365
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 366
    const/16 v6, 0x51

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 367
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 368
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 369
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 370
    const v7, 0x10401a3

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 371
    const v7, 0x1030317

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 374
    return-void

    nop

    :pswitch_data_31e
    .packed-switch 0x1
        :pswitch_1bc
        :pswitch_191
        :pswitch_15e
    .end packed-switch

    :pswitch_data_328
    .packed-switch 0x1
        :pswitch_294
        :pswitch_28d
    .end packed-switch
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveUiView"    # Landroid/view/View;
    .param p3, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;

    .line 378
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    .line 379
    .local v4, "customDescription":Landroid/service/autofill/CustomDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_e

    .line 380
    return v5

    .line 382
    :cond_e
    const/16 v0, 0x469

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    .line 383
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 384
    .local v6, "template":Landroid/widget/RemoteViews;
    const-string v7, "SaveUi"

    if-nez v6, :cond_25

    .line 385
    const-string v0, "No remote view on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v5

    .line 390
    :cond_25
    nop

    .line 391
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v8

    .line 392
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_44

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyCustomDescription(): transformations = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_44
    if-eqz v8, :cond_52

    .line 396
    invoke-static {v3, v6, v8}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 397
    const-string v0, "could not apply main transformations on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v5

    .line 402
    :cond_52
    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    move-object v9, v0

    .line 420
    .local v9, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    const/4 v0, 0x0

    :try_start_59
    iget v10, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {v6, v2, v0, v9, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "customSubtitleView":Landroid/view/View;
    nop

    .line 425
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v10

    .line 426
    .local v10, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_66} :catch_266

    if-eqz v11, :cond_92

    .line 427
    :try_start_68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyCustomDescription(): view = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updates="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_88} :catch_89

    goto :goto_92

    .line 507
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_89
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    goto/16 :goto_26d

    .line 430
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_92
    :goto_92
    const-string v11, "custom description has "

    if-eqz v10, :cond_1af

    .line 431
    :try_start_96
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 432
    .local v12, "size":I
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9c} :catch_266

    if-eqz v13, :cond_b8

    :try_start_9e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " batch updates"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b8} :catch_89

    .line 433
    :cond_b8
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b9
    if-ge v13, v12, :cond_1a8

    .line 434
    :try_start_bb
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 435
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/service/autofill/InternalValidator;

    .line 436
    .local v15, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v15, :cond_17d

    invoke-virtual {v15, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v16

    if-nez v16, :cond_d5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_183

    .line 440
    :cond_d5
    iget-object v5, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/BatchUpdates;

    .line 442
    .local v5, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    nop

    .line 443
    invoke-virtual {v5}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v17
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_e2} :catch_266

    move-object/from16 v18, v17

    .line 444
    .local v18, "templateUpdates":Landroid/widget/RemoteViews;
    move-object/from16 v17, v8

    move-object/from16 v8, v18

    .end local v18    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v8, "templateUpdates":Landroid/widget/RemoteViews;
    .local v17, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v8, :cond_118

    .line 445
    :try_start_ea
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ec} :catch_111

    if-eqz v18, :cond_109

    move-object/from16 v18, v9

    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v18, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :try_start_f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .local v19, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    const-string v10, "Applying template updates for batch update #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_109
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 446
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_10d
    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_11c

    .line 507
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v15    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :catch_111
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    goto/16 :goto_26d

    .line 444
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v12    # "size":I
    .restart local v13    # "i":I
    .restart local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v15    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_118
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 449
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_11c
    nop

    .line 450
    invoke-virtual {v5}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v9

    .line 451
    .local v9, "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v9, :cond_178

    .line 452
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_125} :catch_262

    move-object/from16 v20, v5

    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .local v20, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    const-string v5, ": "

    if-eqz v10, :cond_14c

    .line 453
    :try_start_12b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v21, "templateUpdates":Landroid/widget/RemoteViews;
    const-string v8, "Applying child transformation for batch update #"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 452
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_14c
    move-object/from16 v21, v8

    .line 456
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    :goto_14e
    invoke-static {v3, v6, v9}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_174

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not apply child transformation for batch update #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v5, 0x0

    return v5

    .line 462
    :cond_174
    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_19d

    .line 451
    .end local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_178
    move-object/from16 v20, v5

    move-object/from16 v21, v8

    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    goto :goto_19d

    .line 436
    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v9, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_17d
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 437
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_183
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_19d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping batch update #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v15    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_19d
    :goto_19d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v5, 0x0

    goto/16 :goto_b9

    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_1a8
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    goto :goto_1b5

    .line 430
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_1af
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 468
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_1b5
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v5

    .line 469
    .local v5, "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    if-eqz v5, :cond_244

    .line 470
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 471
    .local v8, "size":I
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_1dd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " actions"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1dd
    instance-of v9, v0, Landroid/view/ViewGroup;

    if-nez v9, :cond_1f8

    .line 473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_244

    .line 476
    :cond_1f8
    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 477
    .local v9, "rootView":Landroid/view/ViewGroup;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1fc
    if-ge v10, v8, :cond_244

    .line 478
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 479
    .local v11, "id":I
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/autofill/InternalOnClickAction;

    .line 480
    .local v12, "action":Landroid/service/autofill/InternalOnClickAction;
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 481
    .local v13, "child":Landroid/view/View;
    if-nez v13, :cond_239

    .line 482
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring action "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for view "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " because it\'s not on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    goto :goto_241

    .line 486
    :cond_239
    new-instance v14, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;

    invoke-direct {v14, v12, v9}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;-><init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .end local v11    # "id":I
    .end local v12    # "action":Landroid/service/autofill/InternalOnClickAction;
    .end local v13    # "child":Landroid/view/View;
    :goto_241
    add-int/lit8 v10, v10, 0x1

    goto :goto_1fc

    .line 496
    .end local v8    # "size":I
    .end local v9    # "rootView":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    :cond_244
    :goto_244
    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi;->applyTextViewStyle(Landroid/view/View;)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_247} :catch_262

    .line 499
    const v8, 0x102020a

    .line 500
    move-object/from16 v9, p2

    :try_start_24c
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 501
    .local v8, "subtitleContainer":Landroid/view/ViewGroup;
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 503
    const/16 v10, 0x1f4

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_25e} :catch_260

    .line 506
    const/4 v7, 0x1

    return v7

    .line 507
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .end local v8    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_260
    move-exception v0

    goto :goto_26d

    :catch_262
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_26d

    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v9, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :catch_266
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 508
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_26d
    const-string v5, "Error applying custom description. "

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return v5
.end method

.method private applyMovementMethodIfNeed(Landroid/widget/TextView;)V
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 553
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 554
    .local v0, "message":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 555
    return-void

    .line 558
    :cond_b
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 559
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 560
    .local v2, "spans":[Landroid/text/style/ClickableSpan;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 561
    return-void

    .line 564
    :cond_24
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 565
    return-void
.end method

.method private applyTextViewStyle(Landroid/view/View;)V
    .registers 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    new-instance v1, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    .line 545
    .local v1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 546
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 547
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_20

    .line 548
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 550
    .end local v3    # "i":I
    :cond_20
    return-void
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 5
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 592
    const/4 v0, 0x0

    const-string v1, "SaveUi"

    if-nez p0, :cond_c

    .line 593
    const-string/jumbo v2, "isValidLink(): custom description without pending intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v0

    .line 596
    :cond_c
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-nez v2, :cond_19

    .line 597
    const-string/jumbo v2, "isValidLink(): pending intent not for activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v0

    .line 600
    :cond_19
    if-nez p1, :cond_22

    .line 601
    const-string/jumbo v2, "isValidLink(): no intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v0

    .line 604
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$applyCustomDescription$7(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p0, "action"    # Landroid/service/autofill/InternalOnClickAction;
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;

    .line 487
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2c

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    .line 491
    return-void
.end method

.method static synthetic lambda$applyTextViewStyle$8(Ljava/util/List;Landroid/view/View;)Z
    .registers 3
    .param p0, "textViews"    # Ljava/util/List;
    .param p1, "view"    # Landroid/view/View;

    .line 537
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 539
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I

    .line 612
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 568
    const v0, 0x102020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 569
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 571
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 572
    .local v2, "maxWidth":I
    move v3, v2

    .line 573
    .local v3, "maxHeight":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 574
    .local v4, "actualWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 576
    .local v5, "actualHeight":I
    const-string v6, ")."

    const-string v7, "SaveUi"

    const-string/jumbo v8, "x"

    if-gt v4, v2, :cond_64

    if-gt v5, v3, :cond_64

    .line 577
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_60

    .line 578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding service icon ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") as it\'s less than maximum ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_60
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a1

    .line 584
    :cond_64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not adding service icon of size ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") because maximum is ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 589
    :goto_a1
    return-void
.end method

.method private show()V
    .registers 3

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing save dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 659
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 660
    return-void
.end method

.method private startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 515
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "SaveUi"

    if-eqz v0, :cond_b

    const-string v0, "Intercepting custom description intent"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    .line 521
    .local v0, "token":Landroid/os/IBinder;
    const-string v2, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 523
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 524
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 526
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hiding UI until restored with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 529
    const/16 v1, 0x46c

    iget v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 530
    .local v1, "log":Landroid/metrics/LogMaker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 531
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 532
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 690
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 693
    return-void

    .line 691
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(I)V
    .registers 4
    .param p1, "category"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 618
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 678
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 680
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 681
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_29

    .line 685
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 686
    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 702
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 704
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 707
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 708
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    sparse-switch v0, :sswitch_data_d8

    .line 716
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 713
    :sswitch_6f
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    goto :goto_7b

    .line 710
    :sswitch_75
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    nop

    .line 719
    :goto_7b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 721
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 723
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 724
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 725
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 727
    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        0x10303ea -> :sswitch_75
        0x10303f5 -> :sswitch_6f
    .end sparse-switch
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .registers 3

    .line 663
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    .line 667
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 668
    nop

    .line 669
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 667
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 668
    throw v0
.end method

.method isShowing()Z
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$applyCustomDescription$6$com-android-server-autofill-ui-SaveUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 404
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    .line 406
    .local v1, "isValid":Z
    if-nez v1, :cond_20

    .line 407
    const/16 v2, 0x46c

    iget v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 408
    invoke-direct {p0, v2, v3}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 409
    .local v2, "log":Landroid/metrics/LogMaker;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 410
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 411
    return v3

    .line 414
    .end local v2    # "log":Landroid/metrics/LogMaker;
    :cond_20
    invoke-direct {p0, p2, v0}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 415
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$new$0$com-android-server-autofill-ui-SaveUi(Landroid/service/autofill/SaveInfo;Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 195
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$new$1$com-android-server-autofill-ui-SaveUi(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method synthetic lambda$new$2$com-android-server-autofill-ui-SaveUi(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 197
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$new$3$com-android-server-autofill-ui-SaveUi(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 5
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$new$4$com-android-server-autofill-ui-SaveUi(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method synthetic lambda$new$5$com-android-server-autofill-ui-SaveUi(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 357
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 628
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_3c

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): got token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " instead of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 630
    invoke-virtual {v2}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 633
    :cond_3c
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 635
    .local v0, "log":Landroid/metrics/LogMaker;
    packed-switch p1, :pswitch_data_bc

    .line 647
    const/16 v2, 0xb

    :try_start_47
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_91

    .line 637
    :pswitch_4b
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 639
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 640
    goto :goto_a8

    .line 642
    :pswitch_6d
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 643
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 645
    goto :goto_a8

    .line 651
    :catchall_8f
    move-exception v1

    goto :goto_b5

    .line 648
    :goto_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_47 .. :try_end_a8} :catchall_8f

    .line 651
    :goto_a8
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 652
    nop

    .line 653
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 654
    return-void

    .line 651
    :goto_b5
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 652
    throw v1

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_4b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    const-string v0, "NO TITLE"

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method
