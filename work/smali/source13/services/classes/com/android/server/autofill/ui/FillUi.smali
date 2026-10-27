.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID_DARK:I = 0x10303e8

.field private static final THEME_ID_LIGHT:I = 0x10303f4

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mThemeId:I

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindow(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V
    .registers 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "nightMode"    # Z
    .param p9, "callback"    # Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 138
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 99
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter-IA;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 139
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v6, "FillUi"

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightMode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_37
    if-eqz v4, :cond_3d

    const v0, 0x10303e8

    goto :goto_40

    :cond_3d
    const v0, 0x10303f4

    :goto_40
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 141
    move-object/from16 v7, p9

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 143
    new-instance v9, Landroid/view/ContextThemeWrapper;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 147
    .local v11, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 148
    .local v12, "headerPresentation":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 151
    .local v13, "footerPresentation":Landroid/widget/RemoteViews;
    if-eqz v8, :cond_75

    .line 152
    const v14, 0x1090043

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .local v14, "decor":Landroid/view/ViewGroup;
    goto :goto_8d

    .line 153
    .end local v14    # "decor":Landroid/view/ViewGroup;
    :cond_75
    if-nez v12, :cond_84

    if-eqz v13, :cond_7a

    goto :goto_84

    .line 157
    :cond_7a
    const v14, 0x1090042

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .restart local v14    # "decor":Landroid/view/ViewGroup;
    goto :goto_8d

    .line 154
    .end local v14    # "decor":Landroid/view/ViewGroup;
    :cond_84
    :goto_84
    const v14, 0x1090044

    invoke-virtual {v11, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 159
    .restart local v14    # "decor":Landroid/view/ViewGroup;
    :goto_8d
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 160
    const v5, 0x1020202

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "titleView":Landroid/widget/TextView;
    const/4 v15, 0x0

    if-eqz v5, :cond_ac

    .line 162
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p6, v7, v15

    const v4, 0x10401be

    invoke-virtual {v9, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_ac
    const v4, 0x10201ff

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 165
    .local v4, "iconView":Landroid/widget/ImageView;
    if-eqz v4, :cond_bd

    .line 166
    move-object/from16 v7, p7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_bf

    .line 165
    :cond_bd
    move-object/from16 v7, p7

    .line 170
    :goto_bf
    if-eqz v8, :cond_104

    .line 171
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 172
    .local v15, "outPoint":Landroid/graphics/Point;
    move-object/from16 v18, v4

    .end local v4    # "iconView":Landroid/widget/ImageView;
    .local v18, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 174
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 175
    iget v4, v15, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 176
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_101

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "titleView":Landroid/widget/TextView;
    .local v19, "titleView":Landroid/widget/TextView;
    const-string/jumbo v5, "initialized fillscreen LayoutParams "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 176
    .end local v19    # "titleView":Landroid/widget/TextView;
    .restart local v5    # "titleView":Landroid/widget/TextView;
    :cond_101
    move-object/from16 v19, v5

    .end local v5    # "titleView":Landroid/widget/TextView;
    .restart local v19    # "titleView":Landroid/widget/TextView;
    goto :goto_108

    .line 170
    .end local v15    # "outPoint":Landroid/graphics/Point;
    .end local v18    # "iconView":Landroid/widget/ImageView;
    .end local v19    # "titleView":Landroid/widget/TextView;
    .restart local v4    # "iconView":Landroid/widget/ImageView;
    .restart local v5    # "titleView":Landroid/widget/TextView;
    :cond_104
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 183
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "titleView":Landroid/widget/TextView;
    .restart local v18    # "iconView":Landroid/widget/ImageView;
    .restart local v19    # "titleView":Landroid/widget/TextView;
    :goto_108
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 200
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v4

    if-lez v4, :cond_138

    .line 201
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v4

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 202
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_145

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "overriding maximum visible datasets to "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_145

    .line 206
    :cond_138
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0004

    .line 207
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 210
    :cond_145
    :goto_145
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 217
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    const-string v15, "Error inflating remote views"

    if-eqz v5, :cond_1ea

    .line 218
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 219
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 220
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 221
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 224
    const v5, 0x1020201

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 227
    .local v5, "container":Landroid/view/ViewGroup;
    :try_start_164
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v17

    if-eqz v17, :cond_1d1

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v7, v9, v14, v4, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_179
    .catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_179} :catch_1dd

    .line 238
    nop

    .line 239
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 240
    new-instance v6, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    move-object/from16 v7, p2

    invoke-direct {v6, v1, v7}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    if-nez v8, :cond_1bf

    .line 243
    iget-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 244
    .local v6, "maxSize":Landroid/graphics/Point;
    invoke-static {v9, v6}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/4 v15, -0x2

    if-eqz v8, :cond_199

    iget v8, v6, Landroid/graphics/Point;->x:I

    goto :goto_19a

    .line 247
    :cond_199
    move v8, v15

    :goto_19a
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v15, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iget v8, v6, Landroid/graphics/Point;->x:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 251
    .local v8, "widthMeasureSpec":I
    iget v15, v6, Landroid/graphics/Point;->y:I

    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 254
    .local v9, "heightMeasureSpec":I
    invoke-virtual {v14, v8, v9}, Landroid/view/ViewGroup;->measure(II)V

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 259
    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v8    # "widthMeasureSpec":I
    .end local v9    # "heightMeasureSpec":I
    :cond_1bf
    new-instance v6, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v6, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 261
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "container":Landroid/view/ViewGroup;
    move-object/from16 v29, v4

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    goto/16 :goto_408

    .line 228
    .restart local v5    # "container":Landroid/view/ViewGroup;
    :cond_1d1
    move-object/from16 v7, p2

    :try_start_1d3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v8, "Permission error accessing RemoteView"

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v5    # "container":Landroid/view/ViewGroup;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v14    # "decor":Landroid/view/ViewGroup;
    .end local v18    # "iconView":Landroid/widget/ImageView;
    .end local v19    # "titleView":Landroid/widget/TextView;
    .end local p0    # "this":Lcom/android/server/autofill/ui/FillUi;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "response":Landroid/service/autofill/FillResponse;
    .end local p3    # "focusedViewId":Landroid/view/autofill/AutofillId;
    .end local p4    # "filterText":Ljava/lang/String;
    .end local p5    # "overlayControl":Lcom/android/server/autofill/ui/OverlayControl;
    .end local p6    # "serviceLabel":Ljava/lang/CharSequence;
    .end local p7    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .end local p8    # "nightMode":Z
    .end local p9    # "callback":Lcom/android/server/autofill/ui/FillUi$Callback;
    throw v0
    :try_end_1db
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1db} :catch_1db

    .line 233
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v5    # "container":Landroid/view/ViewGroup;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v14    # "decor":Landroid/view/ViewGroup;
    .restart local v18    # "iconView":Landroid/widget/ImageView;
    .restart local v19    # "titleView":Landroid/widget/TextView;
    .restart local p0    # "this":Lcom/android/server/autofill/ui/FillUi;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "response":Landroid/service/autofill/FillResponse;
    .restart local p3    # "focusedViewId":Landroid/view/autofill/AutofillId;
    .restart local p4    # "filterText":Ljava/lang/String;
    .restart local p5    # "overlayControl":Lcom/android/server/autofill/ui/OverlayControl;
    .restart local p6    # "serviceLabel":Ljava/lang/CharSequence;
    .restart local p7    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .restart local p8    # "nightMode":Z
    .restart local p9    # "callback":Lcom/android/server/autofill/ui/FillUi$Callback;
    :catch_1db
    move-exception v0

    goto :goto_1e0

    :catch_1dd
    move-exception v0

    move-object/from16 v7, p2

    .line 234
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1e0
    invoke-interface/range {p9 .. p9}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 235
    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 237
    return-void

    .line 262
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "container":Landroid/view/ViewGroup;
    :cond_1ea
    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 263
    .local v5, "datasetCount":I
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_21a

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number datasets: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " max visible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_21a
    const/4 v7, 0x0

    .line 269
    .local v7, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    if-eqz v12, :cond_24d

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v7

    .line 271
    const/4 v8, 0x0

    invoke-virtual {v12, v9, v8, v7, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 273
    const v8, 0x10201fe

    .line 274
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 275
    .local v8, "headerContainer":Landroid/widget/LinearLayout;
    move-object/from16 v16, v7

    .end local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v16, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v7

    invoke-direct {v1, v10, v7}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 276
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_243

    const-string v7, "adding header"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_243
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    .end local v8    # "headerContainer":Landroid/widget/LinearLayout;
    move-object/from16 v7, v16

    goto :goto_250

    .line 280
    .end local v16    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    :cond_24d
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 283
    :goto_250
    if-eqz v13, :cond_287

    .line 284
    const v8, 0x10201fd

    .line 285
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 286
    .local v8, "footerContainer":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_283

    .line 287
    if-nez v7, :cond_263

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v7

    .line 290
    :cond_263
    const/4 v10, 0x0

    invoke-virtual {v13, v9, v10, v7, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 294
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_27a

    const-string v9, "adding footer"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_27a
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x0

    goto :goto_286

    .line 298
    :cond_283
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 300
    .end local v8    # "footerContainer":Landroid/widget/LinearLayout;
    :goto_286
    goto :goto_28a

    .line 301
    :cond_287
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 304
    :goto_28a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 305
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_292
    if-ge v9, v5, :cond_3c7

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/service/autofill/Dataset;

    .line 307
    .local v10, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v16, v5

    .end local v5    # "datasetCount":I
    .local v16, "datasetCount":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 308
    .local v5, "index":I
    if-ltz v5, :cond_3af

    .line 309
    nop

    .line 310
    invoke-virtual {v10, v5}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 309
    move-object/from16 v26, v7

    .end local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v26, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 311
    .local v7, "presentation":Landroid/widget/RemoteViews;
    if-nez v7, :cond_2e1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v11

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .local v27, "inflater":Landroid/view/LayoutInflater;
    const-string/jumbo v11, "not displaying UI on field "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v29, v4

    move-object/from16 v28, v12

    goto/16 :goto_3b7

    .line 318
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    :cond_2e1
    move-object/from16 v27, v11

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v27    # "inflater":Landroid/view/LayoutInflater;
    :try_start_2e3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_2e5
    .catch Ljava/lang/RuntimeException; {:try_start_2e3 .. :try_end_2e5} :catch_3a4

    if-eqz v0, :cond_308

    :try_start_2e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting remote view for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fe
    .catch Ljava/lang/RuntimeException; {:try_start_2e7 .. :try_end_2fe} :catch_2ff

    goto :goto_308

    .line 321
    :catch_2ff
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    move-object/from16 v28, v12

    goto/16 :goto_3ab

    .line 319
    :cond_308
    :goto_308
    :try_start_308
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v11, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_30c
    .catch Ljava/lang/RuntimeException; {:try_start_308 .. :try_end_30c} :catch_3a4

    move-object/from16 v28, v12

    const/4 v12, 0x0

    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .local v28, "headerPresentation":Landroid/widget/RemoteViews;
    :try_start_30f
    invoke-virtual {v7, v0, v12, v4, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0
    :try_end_313
    .catch Ljava/lang/RuntimeException; {:try_start_30f .. :try_end_313} :catch_39e

    .line 324
    .local v0, "view":Landroid/view/View;
    nop

    .line 327
    invoke-virtual {v10, v5}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v11

    .line 328
    .local v11, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v12, 0x0

    .line 329
    .local v12, "filterPattern":Ljava/util/regex/Pattern;
    const/16 v20, 0x0

    .line 330
    .local v20, "valueText":Ljava/lang/String;
    const/16 v21, 0x1

    .line 331
    .local v21, "filterable":Z
    if-nez v11, :cond_346

    .line 332
    move-object/from16 v29, v4

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v29, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 333
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_33f

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v22

    if-eqz v22, :cond_33f

    .line 334
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 336
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_33f
    move-object/from16 v30, v7

    move-object/from16 v4, v20

    move/from16 v7, v21

    goto :goto_382

    .line 337
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    :cond_346
    move-object/from16 v29, v4

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    iget-object v12, v11, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 338
    if-nez v12, :cond_37c

    .line 339
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_373

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v7

    .end local v7    # "presentation":Landroid/widget/RemoteViews;
    .local v30, "presentation":Landroid/widget/RemoteViews;
    const-string v7, "Explicitly disabling filter at id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " for dataset #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_375

    .line 339
    .end local v30    # "presentation":Landroid/widget/RemoteViews;
    .restart local v7    # "presentation":Landroid/widget/RemoteViews;
    :cond_373
    move-object/from16 v30, v7

    .line 343
    .end local v7    # "presentation":Landroid/widget/RemoteViews;
    .restart local v30    # "presentation":Landroid/widget/RemoteViews;
    :goto_375
    const/16 v21, 0x0

    move-object/from16 v4, v20

    move/from16 v7, v21

    goto :goto_382

    .line 338
    .end local v30    # "presentation":Landroid/widget/RemoteViews;
    .restart local v7    # "presentation":Landroid/widget/RemoteViews;
    :cond_37c
    move-object/from16 v30, v7

    .end local v7    # "presentation":Landroid/widget/RemoteViews;
    .restart local v30    # "presentation":Landroid/widget/RemoteViews;
    move-object/from16 v4, v20

    move/from16 v7, v21

    .line 347
    .end local v20    # "valueText":Ljava/lang/String;
    .end local v21    # "filterable":Z
    .local v4, "valueText":Ljava/lang/String;
    .local v7, "filterable":Z
    :goto_382
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 348
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move/from16 v23, v7

    move-object/from16 v24, v4

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v25}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b7

    .line 321
    .end local v0    # "view":Landroid/view/View;
    .end local v11    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .end local v12    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v30    # "presentation":Landroid/widget/RemoteViews;
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v7, "presentation":Landroid/widget/RemoteViews;
    :catch_39e
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v7    # "presentation":Landroid/widget/RemoteViews;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v30    # "presentation":Landroid/widget/RemoteViews;
    goto :goto_3ab

    .end local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v30    # "presentation":Landroid/widget/RemoteViews;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v7    # "presentation":Landroid/widget/RemoteViews;
    .local v12, "headerPresentation":Landroid/widget/RemoteViews;
    :catch_3a4
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    move-object/from16 v28, v12

    .line 322
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v7    # "presentation":Landroid/widget/RemoteViews;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v30    # "presentation":Landroid/widget/RemoteViews;
    :goto_3ab
    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    goto :goto_3b7

    .line 308
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .end local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v30    # "presentation":Landroid/widget/RemoteViews;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v7, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v11, "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    :cond_3af
    move-object/from16 v29, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    .line 305
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v5    # "index":I
    .end local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v10    # "dataset":Landroid/service/autofill/Dataset;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v26    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v27    # "inflater":Landroid/view/LayoutInflater;
    .restart local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_3b7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move/from16 v5, v16

    move-object/from16 v7, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v4, v29

    goto/16 :goto_292

    .end local v16    # "datasetCount":I
    .end local v26    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .end local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v5, "datasetCount":I
    .restart local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    :cond_3c7
    move-object/from16 v29, v4

    move/from16 v16, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    .line 352
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v5    # "datasetCount":I
    .end local v7    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v9    # "i":I
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v16    # "datasetCount":I
    .restart local v26    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v27    # "inflater":Landroid/view/LayoutInflater;
    .restart local v28    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v8}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 354
    const v2, 0x1020200

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 355
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 357
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    if-nez p4, :cond_3f8

    .line 363
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_3fe

    .line 365
    :cond_3f8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 368
    :goto_3fe
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 369
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 371
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    .end local v16    # "datasetCount":I
    .end local v26    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_408
    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 816
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 817
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 819
    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    .line 821
    :cond_1d
    return-void
.end method

.method private applyCancelAction(Landroid/view/View;[I)V
    .registers 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "ids"    # [I

    .line 374
    if-nez p2, :cond_3

    .line 375
    return-void

    .line 378
    :cond_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_26
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_41

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 386
    :cond_41
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 387
    .local v0, "root":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    array-length v3, p2

    if-ge v2, v3, :cond_7c

    .line 388
    aget v3, p2, v2

    .line 389
    .local v3, "id":I
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 390
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_71

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring cancel action for view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because it\'s not on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    goto :goto_79

    .line 395
    :cond_71
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .end local v3    # "id":I
    .end local v4    # "child":Landroid/view/View;
    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 402
    .end local v2    # "i":I
    :cond_7c
    return-void
.end method

.method private applyNewFilterText()V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 420
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 445
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_29

    .line 129
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcing full-screen mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_22
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 132
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newInteractionBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 413
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring click on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method private newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;
    .registers 2

    .line 412
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 572
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 573
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120014

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 575
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120013

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 578
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 579
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 565
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 568
    return-void

    .line 566
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .registers 9

    .line 487
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 488
    return v1

    .line 490
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v2, :cond_c

    .line 492
    const/4 v0, 0x1

    return v0

    .line 494
    :cond_c
    const/4 v2, 0x0

    .line 495
    .local v2, "changed":Z
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_22

    .line 496
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_1a

    .line 497
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 498
    const/4 v2, 0x1

    .line 500
    :cond_1a
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v0, :cond_21

    .line 501
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 502
    const/4 v2, 0x1

    .line 504
    :cond_21
    return v2

    .line 507
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 508
    .local v0, "maxSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 510
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 511
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 513
    iget v1, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 515
    .local v1, "widthMeasureSpec":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 517
    .local v3, "heightMeasureSpec":I
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 519
    .local v4, "itemCount":I
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_56

    .line 520
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 521
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 522
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 525
    :cond_56
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_57
    if-ge v5, v4, :cond_75

    .line 526
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 527
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 528
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 529
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v5, v7, :cond_72

    .line 530
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 525
    .end local v6    # "view":Landroid/view/View;
    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 534
    .end local v5    # "i":I
    :cond_75
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v5, :cond_8a

    .line 535
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 536
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 537
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 539
    :cond_8a
    return v2
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 556
    .local v1, "clampedMeasuredHeight":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int v3, v2, v1

    .line 557
    .local v3, "newContentHeight":I
    if-eq v3, v2, :cond_14

    .line 558
    iput v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 559
    const/4 v0, 0x1

    .line 561
    :cond_14
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 545
    .local v1, "clampedMeasuredWidth":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 546
    .local v2, "newContentWidth":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_18

    .line 547
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 548
    const/4 v0, 0x1

    .line 550
    :cond_18
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .registers 4
    .param p1, "notifyClient"    # Z

    .line 475
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 476
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_b

    .line 477
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 480
    if-eqz p1, :cond_17

    .line 481
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 483
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 484
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 760
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 761
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 764
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_43

    .line 765
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 767
    :cond_43
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_55

    .line 768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 770
    :cond_55
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_67

    .line 771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 773
    :cond_67
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_79

    .line 774
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 776
    :cond_79
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 777
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 780
    :cond_8b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 781
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 782
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 784
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    sparse-switch v0, :sswitch_data_16e

    .line 792
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_da

    .line 789
    :sswitch_ce
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    goto :goto_da

    .line 786
    :sswitch_d4
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    nop

    .line 795
    :goto_da
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_16c

    .line 796
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 799
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowing(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 800
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 801
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_13b

    .line 802
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 804
    :cond_13b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 805
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_152

    .line 806
    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16c

    .line 808
    :cond_152
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    .line 809
    .local v3, "coordinates":[I
    aget v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 812
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v3    # "coordinates":[I
    :cond_16c
    :goto_16c
    return-void

    nop

    :sswitch_data_16e
    .sparse-switch
        0x10303e8 -> :sswitch_d4
        0x10303f4 -> :sswitch_ce
    .end sparse-switch
.end method

.method synthetic lambda$applyCancelAction$4$com-android-server-autofill-ui-FillUi(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 396
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_22

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    .line 400
    return-void
.end method

.method synthetic lambda$applyNewFilterText$6$com-android-server-autofill-ui-FillUi(II)V
    .registers 6
    .param p1, "oldCount"    # I
    .param p2, "count"    # I

    .line 421
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 422
    return-void

    .line 424
    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_39

    .line 425
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_33

    .line 426
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 427
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

    const-string v2, "FillUi"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "size":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_6a

    .line 431
    :cond_39
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 432
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 434
    :cond_42
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_58

    .line 435
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_5d

    .line 438
    :cond_58
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 440
    :goto_5d
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_6a

    .line 441
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 444
    :cond_6a
    :goto_6a
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-autofill-ui-FillUi(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 184
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 195
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 193
    :sswitch_e
    const/4 v0, 0x0

    return v0

    :sswitch_data_10
    .sparse-switch
        0x4 -> :sswitch_e
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x15 -> :sswitch_e
        0x16 -> :sswitch_e
        0x17 -> :sswitch_e
        0x42 -> :sswitch_e
        0x6f -> :sswitch_e
    .end sparse-switch
.end method

.method synthetic lambda$new$1$com-android-server-autofill-ui-FillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 211
    if-eqz p2, :cond_b

    .line 212
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 214
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$2$com-android-server-autofill-ui-FillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 4
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method synthetic lambda$new$3$com-android-server-autofill-ui-FillUi(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "adapter"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 358
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    .line 359
    .local v0, "vi":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 360
    return-void
.end method

.method requestShowFillUi()V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 406
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 3
    .param p1, "filterText"    # Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 449
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_17

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 453
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_16

    .line 455
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 457
    :goto_16
    return-void

    .line 460
    :cond_17
    if-nez p1, :cond_1b

    .line 461
    const/4 p1, 0x0

    goto :goto_1f

    .line 463
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 466
    :goto_1f
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 467
    return-void

    .line 469
    :cond_28
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 471
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 472
    return-void
.end method
