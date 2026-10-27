.class public Lcom/xiaomi/aiinput/AIInputTextManager;
.super Ljava/lang/Object;
.source "AIInputTextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/AIInputTextManager$H;,
        Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;
    }
.end annotation


# static fields
.field public static final whitelist AIInputText_SERVICE:Ljava/lang/String; = "aiinputtext"

.field public static final whitelist AI_TEXT_GET:I = 0x2

.field public static final whitelist AI_TEXT_INSERT:I = 0x1

.field public static final whitelist AI_TEXT_REPLACE:I = 0x0

.field private static final blacklist IS_CN_REGION:Z

.field private static final blacklist KEY_AIINPUT_FEATURE_DISABLE:Ljava/lang/String; = "disable_aiinput_feature"

.field private static final blacklist KEY_METADATA_XIAOAI:Ljava/lang/String; = "xiaoai.supportAiInput"

.field private static final blacklist KEY_SYSTEM_PROPERTIES_REGION:Ljava/lang/String; = "ro.miui.build.region"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AIInputTextManager"

.field private static final blacklist MAX_INFO_LENGTH:I = 0x7d0

.field private static final blacklist MSG_AI_TEXT_GET:I = 0x2

.field private static final blacklist MSG_AI_TEXT_INSERT:I = 0x1

.field private static final blacklist MSG_AI_TEXT_REPLACE:I = 0x0

.field private static final blacklist PKG_NAME_HOME:Ljava/lang/String; = "com.miui.home"

.field public static final whitelist PKG_NAME_XIAOAI:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final blacklist REGION_CN:Ljava/lang/String; = "cn"

.field private static greylist sInstance:Lcom/xiaomi/aiinput/AIInputTextManager;

.field static final blacklist sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final blacklist IS_AIINPUT_FEATURE_ENABLED:Z

.field final blacklist client:Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;

.field private blacklist mAITextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEditCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field final greylist-max-p mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

.field private greylist mLastGetInfo:Lcom/xiaomi/aiinput/AiTextInfo;

.field private final greylist mLock:Ljava/lang/Object;

.field private greylist mService:Lcom/xiaomi/aiinput/IAIInputTextManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minsertFocusedAIText(Lcom/xiaomi/aiinput/AIInputTextManager;Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/aiinput/AIInputTextManager;->insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFocusedAIText(Lcom/xiaomi/aiinput/AIInputTextManager;Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/aiinput/AIInputTextManager;->setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    nop

    .line 44
    const-string v0, "ro.miui.build.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/aiinput/AIInputTextManager;->IS_CN_REGION:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/aiinput/AIInputTextManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/xiaomi/aiinput/IAIInputTextManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/xiaomi/aiinput/IAIInputTextManager;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mLock:Ljava/lang/Object;

    .line 81
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance v1, Lcom/xiaomi/aiinput/AIInputTextManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/aiinput/AIInputTextManager$1;-><init>(Lcom/xiaomi/aiinput/AIInputTextManager;)V

    iput-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->client:Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;

    .line 118
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 119
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disable_aiinput_feature"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    iput-boolean v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->IS_AIINPUT_FEATURE_ENABLED:Z

    .line 121
    new-instance v1, Lcom/xiaomi/aiinput/AIInputTextManager$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/xiaomi/aiinput/AIInputTextManager$H;-><init>(Landroid/os/Looper;Lcom/xiaomi/aiinput/AIInputTextManager;)V

    iput-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    .line 122
    monitor-enter v0

    .line 123
    :try_start_3e
    invoke-direct {p0, p2}, Lcom/xiaomi/aiinput/AIInputTextManager;->tryConnectToServiceLocked(Lcom/xiaomi/aiinput/IAIInputTextManager;)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw v1
.end method

.method private blacklist getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 22
    .param p1, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "AIInputTextManager"

    if-nez v1, :cond_e

    .line 268
    const-string v3, "getFocusedAITextInfo: Listener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_e
    iget-object v3, v0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_90

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    goto/16 :goto_90

    .line 277
    :cond_1c
    iget-object v3, v0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_32

    .line 278
    iget-object v2, v0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/aiinput/AIInputTextManager;->handleGetInfoNonTextView(Landroid/view/View;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 279
    return-void

    .line 282
    :cond_32
    iget-object v3, v0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, "focusedTv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 285
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_42

    move-object v13, v5

    goto :goto_47

    :cond_42
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 286
    .local v13, "contextName":Ljava/lang/String;
    :goto_47
    if-nez v6, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_4e
    move-object v12, v5

    .line 288
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_73

    .line 289
    const-string v5, "getFocusedAITextInfo empty mAITextView"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v2, Lcom/xiaomi/aiinput/AiTextInfo;

    .line 291
    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v10

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    const-string v9, ""

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/xiaomi/aiinput/AiTextInfo;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v2, "emptyInfo":Lcom/xiaomi/aiinput/AiTextInfo;
    invoke-direct {v0, v1, v2, v4, v7}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 293
    return-void

    .line 296
    .end local v2    # "emptyInfo":Lcom/xiaomi/aiinput/AiTextInfo;
    :cond_73
    invoke-direct {v0, v3}, Lcom/xiaomi/aiinput/AIInputTextManager;->getResultText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "resultText":Ljava/lang/String;
    new-instance v5, Lcom/xiaomi/aiinput/AiTextInfo;

    .line 299
    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v16

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    move-object v14, v5

    move-object v15, v2

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lcom/xiaomi/aiinput/AiTextInfo;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v5, "aiTextInfo":Lcom/xiaomi/aiinput/AiTextInfo;
    iput-object v5, v0, Lcom/xiaomi/aiinput/AIInputTextManager;->mLastGetInfo:Lcom/xiaomi/aiinput/AiTextInfo;

    .line 303
    invoke-direct {v0, v1, v5, v4, v7}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 304
    return-void

    .line 272
    .end local v2    # "resultText":Ljava/lang/String;
    .end local v3    # "focusedTv":Landroid/widget/TextView;
    .end local v5    # "aiTextInfo":Lcom/xiaomi/aiinput/AiTextInfo;
    .end local v6    # "context":Landroid/content/Context;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "contextName":Ljava/lang/String;
    :cond_90
    :goto_90
    const-string v3, "getFocusedAITextInfo no mAITextView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 274
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/xiaomi/aiinput/AIInputTextManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    sget-object v0, Lcom/xiaomi/aiinput/AIInputTextManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    sget-object v1, Lcom/xiaomi/aiinput/AIInputTextManager;->sInstance:Lcom/xiaomi/aiinput/AIInputTextManager;

    if-nez v1, :cond_f

    .line 200
    new-instance v1, Lcom/xiaomi/aiinput/AIInputTextManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;-><init>(Landroid/content/Context;Lcom/xiaomi/aiinput/IAIInputTextManager;)V

    sput-object v1, Lcom/xiaomi/aiinput/AIInputTextManager;->sInstance:Lcom/xiaomi/aiinput/AIInputTextManager;

    .line 202
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 203
    sget-object v0, Lcom/xiaomi/aiinput/AIInputTextManager;->sInstance:Lcom/xiaomi/aiinput/AIInputTextManager;

    return-object v0

    .line 202
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist getResultText(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 310
    const-string v0, ""

    .line 311
    .local v0, "res":Ljava/lang/String;
    if-nez p1, :cond_5

    .line 312
    return-object v0

    .line 314
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 315
    invoke-direct {p0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->getSelectedText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 317
    :cond_10
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_2b

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_2b
    return-object v0
.end method

.method private blacklist getSelectedText(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 330
    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_8

    .line 331
    const/4 v0, 0x0

    return-object v0

    .line 334
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 335
    .local v0, "start":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 336
    .local v1, "end":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 338
    .local v2, "text":Ljava/lang/CharSequence;
    if-le v0, v1, :cond_1b

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1f

    :cond_1b
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 337
    :goto_1f
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getServiceLocked()Lcom/xiaomi/aiinput/IAIInputTextManager;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mService:Lcom/xiaomi/aiinput/IAIInputTextManager;

    if-nez v0, :cond_8

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/aiinput/AIInputTextManager;->tryConnectToServiceLocked(Lcom/xiaomi/aiinput/IAIInputTextManager;)V

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mService:Lcom/xiaomi/aiinput/IAIInputTextManager;

    return-object v0
.end method

.method private blacklist handleEditNonTextView(Landroid/view/View;Ljava/lang/String;ILcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 355
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;->onFocusedAITextEdit(Landroid/view/View;Ljava/lang/String;ILcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 361
    return-void

    .line 356
    :cond_17
    :goto_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, p3, v1}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 357
    return-void
.end method

.method private blacklist handleGetInfoNonTextView(Landroid/view/View;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 367
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 372
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;->onRequestFocusedAITextInfo(Landroid/view/View;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 373
    return-void

    .line 368
    :cond_17
    :goto_17
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 369
    return-void
.end method

.method private blacklist insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 12
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 438
    const-string v0, "AIInputTextManager"

    if-nez p2, :cond_a

    .line 439
    const-string v1, "insertFocusedAIText: Listener is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 442
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    goto/16 :goto_c1

    .line 448
    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 449
    const-string v1, "insertFocusedAIText empty txt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, p2, v3, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 451
    return-void

    .line 454
    :cond_28
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_3e

    .line 455
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p1, v4, p2}, Lcom/xiaomi/aiinput/AIInputTextManager;->handleEditNonTextView(Landroid/view/View;Ljava/lang/String;ILcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 456
    return-void

    .line 459
    :cond_3e
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 461
    .local v1, "focusedTv":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/xiaomi/aiinput/AIInputTextManager;->isTextEditable(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_55

    .line 462
    const-string v5, "insertFocusedAIText txt not editable"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0, p2, v3, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 464
    return-void

    .line 467
    :cond_55
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 468
    const-string v5, "insertFocusedAIText mAITextView has selection 1"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0, p2, v3, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 470
    return-void

    .line 473
    :cond_64
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v5, v6, :cond_77

    .line 474
    const-string v5, "insertFocusedAIText mAITextView has selection 2"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, p2, v3, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 476
    return-void

    .line 479
    :cond_77
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 480
    .local v0, "cursorIndex":I
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 481
    .local v2, "beginTxt":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-interface {v5, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 482
    .local v5, "endTxt":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Editable;

    .line 484
    .local v6, "editable":Landroid/text/Editable;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 485
    invoke-direct {p0, p2, v3, v4, v4}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 486
    return-void

    .line 443
    .end local v0    # "cursorIndex":I
    .end local v1    # "focusedTv":Landroid/widget/TextView;
    .end local v2    # "beginTxt":Ljava/lang/CharSequence;
    .end local v5    # "endTxt":Ljava/lang/CharSequence;
    .end local v6    # "editable":Landroid/text/Editable;
    :cond_c1
    :goto_c1
    const-string v1, "insertFocusedAIText no mAITextView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, p2, v3, v4, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 445
    return-void
.end method

.method private blacklist isAIInputEnable(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 509
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 510
    return v0

    .line 513
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.home"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 514
    return v0

    .line 521
    :cond_11
    sget-boolean v1, Lcom/xiaomi/aiinput/AIInputTextManager;->IS_CN_REGION:Z

    if-eqz v1, :cond_21

    .line 522
    invoke-direct {p0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->isXiaoaiSupportAiInput(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->IS_AIINPUT_FEATURE_ENABLED:Z

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 521
    :goto_22
    return v0
.end method

.method private blacklist isTextEditable(Landroid/widget/TextView;)Z
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 346
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 348
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isXiaoaiSupportAiInput(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 530
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 531
    return v0

    .line 534
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.voiceassist"

    const/16 v3, 0x80

    .line 535
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 536
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 537
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1d

    const-string v3, "xiaoai.supportAiInput"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1e

    if-eqz v3, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 538
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :catch_1e
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private blacklist onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V
    .registers 8
    .param p1, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;
    .param p2, "aiTextInfo"    # Lcom/xiaomi/aiinput/AiTextInfo;
    .param p3, "type"    # I
    .param p4, "status"    # Z

    .line 493
    if-nez p1, :cond_3

    return-void

    .line 495
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_c

    .line 496
    :try_start_6
    invoke-interface {p1, p2}, Lcom/xiaomi/aiinput/AIInputResultListener;->onGetFocusedAITextInfo(Lcom/xiaomi/aiinput/AiTextInfo;)V

    goto :goto_14

    .line 500
    :catch_a
    move-exception v0

    goto :goto_15

    .line 497
    :cond_c
    if-eqz p3, :cond_11

    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 498
    :cond_11
    invoke-interface {p1, p3, p4}, Lcom/xiaomi/aiinput/AIInputResultListener;->onHandleTextView(IZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_a

    .line 502
    :cond_14
    :goto_14
    goto :goto_1c

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    :goto_15
    const-string v1, "AIInputTextManager"

    const-string v2, "onAIInputResultCallback: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method private blacklist setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 12
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 381
    const-string v0, "AIInputTextManager"

    if-nez p2, :cond_a

    .line 382
    const-string v1, "setFocusedAIText: Listener is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 385
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    goto/16 :goto_c3

    .line 390
    :cond_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 391
    const-string v1, "setFocusedAIText empty txt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, p2, v2, v3, v3}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 393
    return-void

    .line 396
    :cond_27
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_3d

    .line 397
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/xiaomi/aiinput/AIInputTextManager;->handleEditNonTextView(Landroid/view/View;Ljava/lang/String;ILcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 398
    return-void

    .line 401
    :cond_3d
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 403
    .local v1, "focusedTv":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/xiaomi/aiinput/AIInputTextManager;->isTextEditable(Landroid/widget/TextView;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 404
    const-string v4, "setFocusedAIText txt not editable"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0, p2, v2, v3, v3}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 406
    return-void

    .line 410
    :cond_54
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 412
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .local v0, "selectStartIndex":I
    goto :goto_6f

    .line 413
    .end local v0    # "selectStartIndex":I
    :cond_5f
    iget-object v4, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mLastGetInfo:Lcom/xiaomi/aiinput/AiTextInfo;

    if-eqz v4, :cond_ba

    invoke-virtual {v4}, Lcom/xiaomi/aiinput/AiTextInfo;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 417
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mLastGetInfo:Lcom/xiaomi/aiinput/AiTextInfo;

    invoke-virtual {v0}, Lcom/xiaomi/aiinput/AiTextInfo;->getCursorIndex()I

    move-result v0

    .line 424
    .restart local v0    # "selectStartIndex":I
    :goto_6f
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 425
    .local v4, "beginTxt":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 426
    .local v5, "endTxt":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Editable;

    .line 428
    .local v6, "editable":Landroid/text/Editable;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 429
    const/4 v7, 0x1

    invoke-direct {p0, p2, v2, v3, v7}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 430
    return-void

    .line 419
    .end local v0    # "selectStartIndex":I
    .end local v4    # "beginTxt":Ljava/lang/CharSequence;
    .end local v5    # "endTxt":Ljava/lang/CharSequence;
    .end local v6    # "editable":Landroid/text/Editable;
    :cond_ba
    const-string v4, "setFocusedAIText mAITextView no selection"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0, p2, v2, v3, v3}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 421
    return-void

    .line 386
    .end local v1    # "focusedTv":Landroid/widget/TextView;
    :cond_c3
    :goto_c3
    const-string v1, "setFocusedAIText no mAITextView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, p2, v2, v3, v3}, Lcom/xiaomi/aiinput/AIInputTextManager;->onAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 388
    return-void
.end method

.method private blacklist tryConnectToServiceLocked(Lcom/xiaomi/aiinput/IAIInputTextManager;)V
    .registers 6
    .param p1, "service"    # Lcom/xiaomi/aiinput/IAIInputTextManager;

    .line 210
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mContext:Ljava/lang/ref/WeakReference;

    const-string v1, "AIInputTextManager"

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_52

    .line 215
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/aiinput/AIInputTextManager;->isAIInputEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 216
    return-void

    .line 219
    :cond_1c
    if-nez p1, :cond_2b

    .line 220
    const-string v0, "aiinputtext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 221
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_27

    .line 222
    return-void

    .line 224
    :cond_27
    invoke-static {v0}, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/IAIInputTextManager;

    move-result-object p1

    .line 228
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->client:Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;

    iget-object v2, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/xiaomi/aiinput/IAIInputTextManager;->addClient(Lcom/xiaomi/aiinput/IAIInputTextManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mService:Lcom/xiaomi/aiinput/IAIInputTextManager;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_4b

    .line 232
    goto :goto_51

    .line 230
    :catch_4b
    move-exception v0

    .line 231
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AIInputTextManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_51
    return-void

    .line 211
    :cond_52
    :goto_52
    const-string v0, "mContext is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist addAITextView(Landroid/view/View;)V
    .registers 4
    .param p1, "textView"    # Landroid/view/View;

    .line 131
    if-nez p1, :cond_3

    .line 132
    return-void

    .line 135
    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_34

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_33

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_33

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_33

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_34

    .line 140
    :cond_33
    return-void

    .line 143
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mAITextView:Ljava/lang/ref/WeakReference;

    .line 146
    :cond_41
    return-void
.end method

.method public blacklist getAIInputTextClient()Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/aiinput/AIInputTextManager;->getServiceLocked()Lcom/xiaomi/aiinput/IAIInputTextManager;

    move-result-object v1

    .line 252
    .local v1, "service":Lcom/xiaomi/aiinput/IAIInputTextManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 253
    monitor-exit v0

    return-object v2

    .line 255
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 257
    :try_start_d
    invoke-interface {v1}, Lcom/xiaomi/aiinput/IAIInputTextManager;->getAIInputTextClient()Lcom/xiaomi/aiinput/IAIInputTextManagerClient;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 258
    :catch_12
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Lcom/xiaomi/aiinput/IAIInputTextManager;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method synthetic blacklist lambda$updateAIInputClient$0$com-xiaomi-aiinput-AIInputTextManager(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 157
    const-string v0, "AIInputTextManager"

    if-nez p1, :cond_a

    .line 158
    const-string v1, "updateAIInputClient context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mService:Lcom/xiaomi/aiinput/IAIInputTextManager;

    if-eqz v1, :cond_22

    .line 164
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->client:Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaomi/aiinput/IAIInputTextManager;->addClient(Lcom/xiaomi/aiinput/IAIInputTextManagerClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    .line 167
    goto :goto_22

    .line 165
    :catch_1c
    move-exception v1

    .line 166
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AIInputTextManagerService is dead"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist registerAITextCallback(Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method

.method public whitelist unregisterAITextCallback(Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;

    .line 185
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    .line 186
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aiinput/AIInputTextManager$AITextCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mEditCallback:Ljava/lang/ref/WeakReference;

    .line 189
    :cond_1b
    return-void
.end method

.method public blacklist updateAIInputClient(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 152
    invoke-direct {p0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->isAIInputEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    return-void

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_13

    .line 156
    new-instance v1, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/aiinput/AIInputTextManager;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 172
    :cond_13
    return-void
.end method
