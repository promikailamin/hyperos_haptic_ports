.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCheckedForLoaderManager:Z

.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private greylist mLoadersStarted:Z

.field private greylist-max-o mRetainLoaders:Z

.field final greylist-max-o mWindowAnimations:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/Activity;)V
    .registers 4

    .line 69
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .line 73
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    .line 51
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 74
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 77
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .line 64
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 65
    :goto_9
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    .line 64
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 66
    return-void
.end method

.method private static greylist-max-o chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 3

    .line 85
    if-nez p1, :cond_b

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 86
    check-cast p0, Landroid/app/Activity;

    .line 87
    iget-object p0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object p0

    .line 89
    :cond_b
    return-object p1
.end method


# virtual methods
.method greylist-max-o doLoaderDestroy()V
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 307
    return-void

    .line 309
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 310
    return-void
.end method

.method greylist-max-o doLoaderRetain()V
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 300
    return-void

    .line 302
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 303
    return-void
.end method

.method greylist-max-o doLoaderStart()V
    .registers 5

    .line 266
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_5

    .line 267
    return-void

    .line 269
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 271
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_12

    .line 272
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_21

    .line 273
    :cond_12
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_21

    .line 274
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    const-string v3, "(root)"

    invoke-virtual {p0, v3, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 276
    :cond_21
    :goto_21
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 277
    return-void
.end method

.method greylist-max-o doLoaderStop(Z)V
    .registers 3

    .line 280
    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 282
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 283
    return-void

    .line 286
    :cond_7
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_c

    .line 287
    return-void

    .line 289
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 291
    if-eqz p1, :cond_17

    .line 292
    iget-object p1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_1c

    .line 294
    :cond_17
    iget-object p1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 296
    :goto_1c
    return-void
.end method

.method greylist-max-o dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 385
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_44

    .line 388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    :cond_44
    return-void
.end method

.method greylist-max-o getActivity()Landroid/app/Activity;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method greylist-max-o getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method greylist-max-o getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .registers 5

    .line 328
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 331
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 332
    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    .line 333
    new-instance v0, Landroid/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    .line 334
    iget-object p2, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 335
    :cond_22
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    iget-boolean p1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez p1, :cond_2d

    .line 336
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 338
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method greylist-max-o getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .registers 4

    .line 246
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 249
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 250
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 251
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method greylist-max-o getRetainLoaders()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method greylist-max-o inactivateFragment(Ljava/lang/String;)V
    .registers 4

    .line 256
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1a

    .line 257
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 258
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 259
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 260
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1a
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2

    .line 212
    return-void
.end method

.method public whitelist onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 103
    return-void
.end method

.method public whitelist onFindViewById(I)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 217
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public whitelist onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist onGetWindowAnimations()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public whitelist onHasView()Z
    .registers 2

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onHasWindowAnimations()Z
    .registers 2

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onInvalidateOptionsMenu()V
    .registers 1

    .line 140
    return-void
.end method

.method public whitelist onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    .line 190
    return-void
.end method

.method public whitelist onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .registers 2

    .line 109
    const/4 p1, 0x1

    return p1
.end method

.method public greylist-max-o onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6

    .line 162
    const/4 p1, -0x1

    if-ne p3, p1, :cond_9

    .line 166
    iget-object p1, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    return-void

    .line 163
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    .line 148
    const/4 p1, -0x1

    if-ne p3, p1, :cond_9

    .line 152
    iget-object p1, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 176
    const/4 p1, -0x1

    if-ne p3, p1, :cond_b

    .line 180
    iget-object p1, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object p3, p2

    move-object p2, p1

    invoke-virtual/range {p2 .. p8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 182
    return-void

    .line 177
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onUseFragmentManagerInflaterFactory()Z
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o reportLoaderStart()V
    .registers 5

    .line 313
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2b

    .line 314
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 315
    new-array v1, v0, [Landroid/app/LoaderManagerImpl;

    .line 316
    add-int/lit8 v2, v0, -0x1

    :goto_e
    if-ltz v2, :cond_1d

    .line 317
    iget-object v3, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 316
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 319
    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 320
    aget-object v3, v1, v2

    .line 321
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    .line 322
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 325
    :cond_2b
    return-void
.end method

.method greylist-max-o restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 376
    if-eqz p1, :cond_15

    .line 377
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 378
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 381
    :cond_15
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 382
    return-void
.end method

.method greylist-max-o retainLoaderNonConfig()Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 342
    nop

    .line 343
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 346
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 347
    new-array v2, v0, [Landroid/app/LoaderManagerImpl;

    .line 348
    add-int/lit8 v3, v0, -0x1

    :goto_10
    if-ltz v3, :cond_1f

    .line 349
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 348
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 351
    :cond_1f
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    .line 352
    move v4, v1

    :goto_24
    if-ge v1, v0, :cond_4b

    .line 353
    aget-object v5, v2, v1

    .line 354
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_38

    if-eqz v3, :cond_38

    .line 355
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_35

    .line 356
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 358
    :cond_35
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 360
    :cond_38
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3e

    .line 361
    const/4 v4, 0x1

    goto :goto_48

    .line 363
    :cond_3e
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 364
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v5, v5, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_4b
    move v1, v4

    .line 369
    :cond_4c
    if-eqz v1, :cond_51

    .line 370
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v0

    .line 372
    :cond_51
    const/4 v0, 0x0

    return-object v0
.end method
