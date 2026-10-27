.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o WHAT_HIDE:I = 0x2

.field private static final greylist-max-o WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final greylist-max-o WHAT_SELECT_TRACK:I = 0x3

.field private static final greylist-max-o WHAT_SHOW:I = 0x1


# instance fields
.field private greylist-max-o mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final greylist-max-o mCallback:Landroid/os/Handler$Callback;

.field private greylist-max-o mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private greylist-max-o mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/media/SubtitleController$Listener;

.field private greylist-max-o mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSelectedTrack:Landroid/media/SubtitleTrack;

.field private greylist-max-o mShowing:Z

.field private greylist-max-o mTimeProvider:Landroid/media/MediaTimeProvider;

.field private greylist-max-o mTrackIsExplicit:Z

.field private greylist-max-o mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibilityIsExplicit:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoHide(Landroid/media/SubtitleController;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoSelectDefaultTrack(Landroid/media/SubtitleController;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoSelectTrack(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoShow(Landroid/media/SubtitleController;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 38
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/media/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Landroid/media/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 265
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 101
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 102
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 104
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 105
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 106
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 107
    nop

    .line 108
    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 109
    return-void
.end method

.method private greylist-max-o checkAnchorLooper()V
    .registers 1

    .line 490
    nop

    .line 491
    nop

    .line 492
    return-void
.end method

.method private greylist-max-o doHide()V
    .registers 2

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 376
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_c

    .line 377
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 379
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 380
    return-void
.end method

.method private greylist-max-o doSelectDefaultTrack()V
    .registers 4

    .line 273
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 276
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_3a

    .line 277
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 279
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_35

    .line 282
    :cond_24
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 283
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_38

    .line 284
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    goto :goto_38

    .line 281
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 286
    :cond_38
    :goto_38
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 288
    :cond_3a
    return-void

    .line 294
    :cond_3b
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_4f

    .line 296
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 297
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 298
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_4f

    .line 299
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 300
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 303
    :cond_4f
    return-void
.end method

.method private greylist-max-o doSelectTrack(Landroid/media/SubtitleTrack;)V
    .registers 4

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 167
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-ne v0, p1, :cond_8

    .line 168
    return-void

    .line 171
    :cond_8
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_17

    .line 172
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 173
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 176
    :cond_17
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 177
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_26

    .line 178
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 181
    :cond_26
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_36

    .line 182
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 183
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 186
    :cond_36
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    if-eqz v0, :cond_3f

    .line 187
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    .line 189
    :cond_3f
    return-void
.end method

.method private greylist-max-o doShow()V
    .registers 2

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 358
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 359
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_e

    .line 360
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 362
    :cond_e
    return-void
.end method

.method private greylist-max-o getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_6
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o processOnAnchor(Landroid/os/Message;)V
    .registers 4

    .line 495
    nop

    .line 496
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 497
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_18

    .line 499
    :cond_13
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    :goto_18
    return-void
.end method


# virtual methods
.method public greylist-max-o addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 6

    .line 326
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 328
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 329
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_3e

    .line 331
    iget-object p1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_42

    .line 332
    :try_start_24
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_33

    .line 333
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 336
    :cond_33
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3b

    .line 338
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_42

    return-object v2

    .line 337
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1

    .line 341
    :cond_3e
    goto :goto_9

    .line 342
    :cond_3f
    monitor-exit v0

    .line 343
    const/4 p1, 0x0

    return-object p1

    .line 342
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_42

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public greylist-max-o getDefaultTrack()Landroid/media/SubtitleTrack;
    .registers 17

    .line 215
    move-object/from16 v0, p0

    .line 216
    nop

    .line 218
    iget-object v1, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 219
    nop

    .line 220
    if-nez v1, :cond_11

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_12

    .line 220
    :cond_11
    move-object v2, v1

    .line 223
    :goto_12
    iget-object v3, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    .line 225
    iget-object v4, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v4

    .line 226
    :try_start_1b
    iget-object v0, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/SubtitleTrack;

    .line 227
    invoke-virtual {v7}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 228
    const-string v9, "language"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    const-string v10, "is-forced-subtitle"

    .line 230
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_45

    move v10, v12

    goto :goto_46

    :cond_45
    move v10, v11

    .line 231
    :goto_46
    const-string v13, "is-autoselect"

    .line 232
    invoke-virtual {v8, v13, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_50

    move v13, v12

    goto :goto_51

    :cond_50
    move v13, v11

    .line 233
    :goto_51
    const-string v14, "is-default"

    .line 234
    invoke-virtual {v8, v14, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5b

    move v8, v12

    goto :goto_5c

    :cond_5b
    move v8, v11

    .line 236
    :goto_5c
    if-eqz v2, :cond_81

    .line 238
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_81

    .line 239
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_81

    .line 240
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    goto :goto_81

    :cond_7f
    move v12, v11

    goto :goto_82

    :cond_81
    :goto_81
    nop

    .line 242
    :goto_82
    if-eqz v10, :cond_86

    move v9, v11

    goto :goto_88

    :cond_86
    const/16 v9, 0x8

    .line 243
    :goto_88
    if-nez v1, :cond_8e

    if-eqz v8, :cond_8e

    const/4 v14, 0x4

    goto :goto_8f

    :cond_8e
    move v14, v11

    :goto_8f
    add-int/2addr v9, v14

    .line 244
    if-eqz v13, :cond_93

    goto :goto_94

    :cond_93
    const/4 v11, 0x2

    :goto_94
    add-int/2addr v9, v11

    add-int/2addr v9, v12

    .line 246
    if-nez v3, :cond_9b

    if-nez v10, :cond_9b

    .line 247
    goto :goto_23

    .line 251
    :cond_9b
    if-nez v1, :cond_9f

    if-nez v8, :cond_a7

    :cond_9f
    if-eqz v12, :cond_ac

    if-nez v13, :cond_a7

    if-nez v10, :cond_a7

    if-eqz v1, :cond_ac

    .line 254
    :cond_a7
    if-le v9, v6, :cond_ac

    .line 255
    nop

    .line 256
    move-object v5, v7

    move v6, v9

    .line 259
    :cond_ac
    goto/16 :goto_23

    .line 260
    :cond_ae
    monitor-exit v4

    .line 261
    return-object v5

    .line 260
    :catchall_b0
    move-exception v0

    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_1b .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method public greylist-max-o getSelectedTrack()Landroid/media/SubtitleTrack;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public greylist-max-o getTracks()[Landroid/media/SubtitleTrack;
    .registers 4

    .line 124
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/SubtitleTrack;

    .line 126
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    monitor-exit v0

    return-object v1

    .line 128
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o hasRendererFor(Landroid/media/MediaFormat;)Z
    .registers 5

    .line 434
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 437
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 438
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 440
    :cond_1e
    goto :goto_9

    .line 441
    :cond_1f
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 442
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public greylist hide()V
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 372
    return-void
.end method

.method public greylist registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .registers 4

    .line 423
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 427
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_10
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public greylist reset()V
    .registers 3

    .line 308
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 309
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 311
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 313
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 314
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 316
    return-void
.end method

.method public greylist-max-o selectDefaultTrack()V
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public greylist-max-o selectTrack(Landroid/media/SubtitleTrack;)Z
    .registers 4

    .line 157
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    const/4 p1, 0x0

    return p1

    .line 161
    :cond_c
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 162
    const/4 p1, 0x1

    return p1
.end method

.method public greylist-max-o setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .registers 4

    .line 472
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-ne v0, p1, :cond_5

    .line 473
    return-void

    .line 476
    :cond_5
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 477
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 478
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 480
    :cond_12
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 481
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 482
    iget-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz p1, :cond_35

    .line 483
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 484
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 485
    iget-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 487
    :cond_35
    return-void
.end method

.method public greylist show()V
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 354
    return-void
.end method
