.class final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;,
        Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogFillUi"

.field private static final THEME_ID_DARK:I = 0x10303ea

.field private static final THEME_ID_LIGHT:I = 0x10303f5


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private mFilterText:Ljava/lang/String;

.field private final mListView:Landroid/widget/ListView;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mThemeId:I

.field private final mVisibleDatasetsMaxCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/DialogFillUi$UiCallback;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "servicePackageName"    # Ljava/lang/String;
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p9, "nightMode"    # Z
    .param p10, "callback"    # Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    .line 109
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "DialogFillUi"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nightMode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_26
    if-eqz v3, :cond_2c

    const v0, 0x10303ea

    goto :goto_2f

    :cond_2c
    const v0, 0x10303f5

    :goto_2f
    iput v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 112
    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    .line 113
    move-object/from16 v6, p8

    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 114
    move-object/from16 v7, p6

    iput-object v7, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 115
    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 117
    new-instance v9, Landroid/view/ContextThemeWrapper;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 119
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x1090045

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 121
    .local v12, "decor":Landroid/view/View;
    move-object/from16 v14, p5

    invoke-direct {v1, v12, v14}, Lcom/android/server/autofill/ui/DialogFillUi;->setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-direct {v1, v12, v2}, Lcom/android/server/autofill/ui/DialogFillUi;->setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/DialogFillUi;->getVisibleDatasetsMaxCount()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v15

    if-eqz v15, :cond_84

    .line 127
    iput-object v13, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 128
    iput-object v13, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 130
    :try_start_6e
    invoke-direct {v1, v12, v2}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_71} :catch_76

    .line 136
    move-object/from16 v4, p3

    move-object/from16 v15, p4

    goto :goto_a1

    .line 131
    :catch_76
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-interface/range {p10 .. p10}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    .line 133
    const-string v9, "Error inflating remote views"

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iput-object v13, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 135
    return-void

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_84
    move-object/from16 v4, p3

    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/ui/DialogFillUi;->createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;

    move-result-object v13

    .line 139
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    new-instance v15, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {v15, v1, v13}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    iput-object v15, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 140
    const v15, 0x1020205

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    iput-object v15, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 141
    move-object/from16 v15, p4

    invoke-direct {v1, v12, v15}, Lcom/android/server/autofill/ui/DialogFillUi;->initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V

    .line 144
    .end local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    :goto_a1
    invoke-direct {v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi;->setDismissButton(Landroid/view/View;)V

    .line 146
    new-instance v13, Landroid/app/Dialog;

    invoke-direct {v13, v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v13, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 147
    invoke-virtual {v13, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/DialogFillUi;->setDialogParamsAsBottomSheet()V

    .line 149
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {v13, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/DialogFillUi;->show()V

    .line 152
    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 450
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 451
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    .line 453
    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->post()V

    .line 455
    :cond_1d
    return-void
.end method

.method private createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;
    .registers 24
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/FillResponse;",
            "Landroid/view/autofill/AutofillId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;",
            ">;"
        }
    .end annotation

    .line 266
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    .local v3, "datasetCount":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "DialogFillUi"

    if-eqz v0, :cond_34

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number datasets: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " max visible: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_34
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    move-object v5, v0

    .line 279
    .local v5, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 280
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;>;"
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_42
    if-ge v7, v3, :cond_141

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 282
    .local v14, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 283
    .local v15, "index":I
    if-ltz v15, :cond_13d

    .line 284
    nop

    .line 285
    invoke-virtual {v14, v15}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 286
    .local v12, "presentation":Landroid/widget/RemoteViews;
    if-nez v12, :cond_8b

    .line 287
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_13d

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not displaying UI on field "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13d

    .line 295
    :cond_8b
    :try_start_8b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_8d} :catch_135

    if-eqz v0, :cond_ac

    :try_start_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting remote view for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_a6} :catch_a7

    goto :goto_ac

    .line 298
    :catch_a7
    move-exception v0

    move-object/from16 v20, v12

    goto/16 :goto_138

    .line 296
    :cond_ac
    :goto_ac
    :try_start_ac
    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v12, v0, v8, v5, v9}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v13
    :try_end_b5
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b5} :catch_135

    .line 301
    .local v13, "view":Landroid/view/View;
    nop

    .line 304
    invoke-virtual {v14, v15}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    .line 305
    .local v0, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v8, 0x0

    .line 306
    .local v8, "filterPattern":Ljava/util/regex/Pattern;
    const/4 v9, 0x0

    .line 307
    .local v9, "valueText":Ljava/lang/String;
    const/4 v10, 0x1

    .line 308
    .local v10, "filterable":Z
    if-nez v0, :cond_e5

    .line 309
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 310
    .local v11, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v11, :cond_dd

    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v16

    if-eqz v16, :cond_dd

    .line 311
    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 313
    .end local v11    # "value":Landroid/view/autofill/AutofillValue;
    :cond_dd
    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    goto :goto_120

    .line 314
    :cond_e5
    iget-object v8, v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 315
    if-nez v8, :cond_119

    .line 316
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_110

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local v16, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const-string v0, "Explicitly disabling filter at id "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " for dataset #"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 316
    .end local v16    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :cond_110
    move-object/from16 v16, v0

    .line 320
    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v16    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :goto_112
    const/4 v10, 0x0

    move-object v0, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    goto :goto_120

    .line 315
    .end local v16    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :cond_119
    move-object/from16 v16, v0

    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v16    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    move-object v0, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    .line 324
    .end local v8    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v9    # "valueText":Ljava/lang/String;
    .end local v10    # "filterable":Z
    .local v0, "filterPattern":Ljava/util/regex/Pattern;
    .local v17, "valueText":Ljava/lang/String;
    .local v18, "filterable":Z
    :goto_120
    new-instance v11, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-object v8, v11

    move-object v9, v14

    move-object v10, v0

    move-object/from16 v19, v0

    move-object v0, v11

    .end local v0    # "filterPattern":Ljava/util/regex/Pattern;
    .local v19, "filterPattern":Ljava/util/regex/Pattern;
    move/from16 v11, v18

    move-object/from16 v20, v12

    .end local v12    # "presentation":Landroid/widget/RemoteViews;
    .local v20, "presentation":Landroid/widget/RemoteViews;
    move-object/from16 v12, v17

    invoke-direct/range {v8 .. v13}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 298
    .end local v13    # "view":Landroid/view/View;
    .end local v16    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .end local v17    # "valueText":Ljava/lang/String;
    .end local v18    # "filterable":Z
    .end local v19    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v20    # "presentation":Landroid/widget/RemoteViews;
    .restart local v12    # "presentation":Landroid/widget/RemoteViews;
    :catch_135
    move-exception v0

    move-object/from16 v20, v12

    .line 299
    .end local v12    # "presentation":Landroid/widget/RemoteViews;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v20    # "presentation":Landroid/widget/RemoteViews;
    :goto_138
    const-string v8, "Error inflating remote views"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .end local v15    # "index":I
    .end local v20    # "presentation":Landroid/widget/RemoteViews;
    :cond_13d
    :goto_13d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_42

    .line 327
    .end local v7    # "i":I
    :cond_141
    return-object v6
.end method

.method private getVisibleDatasetsMaxCount()I
    .registers 4

    .line 155
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 156
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    .line 157
    .local v0, "maxCount":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_27

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overriding maximum visible datasets to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogFillUi"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_27
    return v0

    .line 162
    .end local v0    # "maxCount":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 162
    return v0
.end method

.method private initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .registers 9
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 237
    nop

    .line 238
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 239
    .local v0, "presentation":Landroid/widget/RemoteViews;
    if-nez v0, :cond_13

    .line 240
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 242
    :cond_13
    if-eqz v0, :cond_4a

    .line 247
    const v1, 0x1020203

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 248
    .local v1, "container":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 254
    .local v2, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v3

    .line 256
    .local v3, "content":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 258
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 259
    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 262
    return-void

    .line 243
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v2    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v3    # "content":Landroid/view/View;
    :cond_4a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No presentation for fill dialog authentication"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 8
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 337
    .local v0, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 343
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_28
    if-nez p2, :cond_2e

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    goto :goto_34

    .line 350
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 353
    :goto_34
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v1

    .line 354
    .local v1, "oldCount":I
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 377
    return-void
.end method

.method static synthetic lambda$initialDatasetLayout$8(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V
    .registers 8
    .param p0, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p1, "v"    # Landroid/view/View;

    .line 344
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 229
    const v0, 0x1020208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, "yesButton":Landroid/widget/TextView;
    const v1, 0x1040180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method private setDialogParamsAsBottomSheet()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 169
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 170
    const v1, 0x20002

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 172
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 173
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 174
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 178
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 180
    const v3, 0x104019c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 181
    const v2, 0x1030317

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 182
    return-void
.end method

.method private setDismissButton(Landroid/view/View;)V
    .registers 4
    .param p1, "decor"    # Landroid/view/View;

    .line 222
    const v0, 0x1020206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    .local v0, "noButton":Landroid/widget/TextView;
    const v1, 0x10401a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method private setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .registers 9
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 201
    nop

    .line 202
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 203
    .local v0, "presentation":Landroid/widget/RemoteViews;
    if-nez v0, :cond_c

    .line 204
    return-void

    .line 207
    :cond_c
    const v1, 0x1020204

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, "container":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 215
    .local v2, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, "content":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 219
    return-void
.end method

.method private setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 185
    if-nez p2, :cond_3

    .line 186
    return-void

    .line 189
    :cond_3
    const v0, 0x102020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 191
    .local v1, "actualWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 192
    .local v2, "actualHeight":I
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_41

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding service icon ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DialogFillUi"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_41
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    return-void
.end method

.method private show()V
    .registers 3

    .line 380
    const-string v0, "DialogFillUi"

    const-string v1, "Showing fill dialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 382
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 383
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 411
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 414
    return-void

    .line 412
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 400
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "DialogFillUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->throwIfDestroyed()V

    .line 403
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1d

    .line 406
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 407
    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 427
    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    sparse-switch v0, :sswitch_data_a0

    .line 435
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 432
    :sswitch_38
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    goto :goto_44

    .line 429
    :sswitch_3e
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    nop

    .line 438
    :goto_44
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 440
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
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

    .line 442
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 443
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 444
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 446
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x10303ea -> :sswitch_3e
        0x10303f5 -> :sswitch_38
    .end sparse-switch
.end method

.method hide()V
    .registers 3

    .line 390
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "DialogFillUi"

    const-string v1, "Hiding fill dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17

    .line 394
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 395
    throw v0
.end method

.method isShowing()Z
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createDatasetItems$6$com-android-server-autofill-ui-DialogFillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 273
    if-eqz p2, :cond_b

    .line 274
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 276
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$initialAuthenticationLayout$3$com-android-server-autofill-ui-DialogFillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 249
    if-eqz p2, :cond_b

    .line 250
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 252
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$initialAuthenticationLayout$4$com-android-server-autofill-ui-DialogFillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 4
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method synthetic lambda$initialAuthenticationLayout$5$com-android-server-autofill-ui-DialogFillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 4
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method synthetic lambda$initialDatasetLayout$7$com-android-server-autofill-ui-DialogFillUi(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "adapter"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 333
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-result-object v0

    .line 334
    .local v0, "vi":Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 335
    return-void
.end method

.method synthetic lambda$initialDatasetLayout$9$com-android-server-autofill-ui-DialogFillUi(II)V
    .registers 6
    .param p1, "oldCount"    # I
    .param p2, "count"    # I

    .line 355
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 356
    return-void

    .line 358
    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_39

    .line 359
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_33

    .line 360
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 361
    .local v0, "size":I
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dataset matches filter with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogFillUi"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0    # "size":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    goto :goto_61

    .line 366
    :cond_39
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_4f

    .line 367
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_54

    .line 370
    :cond_4f
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 372
    :goto_54
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_61

    .line 373
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 376
    :cond_61
    :goto_61
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-autofill-ui-DialogFillUi(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 149
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    return-void
.end method

.method synthetic lambda$setDismissButton$2$com-android-server-autofill-ui-DialogFillUi(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDismissed()V

    return-void
.end method

.method synthetic lambda$setHeader$1$com-android-server-autofill-ui-DialogFillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 209
    if-eqz p2, :cond_b

    .line 210
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 212
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 419
    const-string v0, "NO TITLE"

    return-object v0
.end method
