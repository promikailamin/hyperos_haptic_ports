.class public Landroid/app/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field greylist-max-o mEmptyText:Ljava/lang/CharSequence;

.field greylist-max-o mEmptyView:Landroid/view/View;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mList:Landroid/widget/ListView;

.field greylist-max-o mListContainer:Landroid/view/View;

.field greylist-max-o mListShown:Z

.field private final greylist-max-o mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field greylist-max-o mProgressContainer:Landroid/view/View;

.field private final greylist-max-o mRequestFocus:Ljava/lang/Runnable;

.field greylist-max-o mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$1;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$2;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 179
    return-void
.end method

.method private greylist-max-o ensureList()V
    .registers 4

    .line 386
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 387
    return-void

    .line 389
    :cond_5
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_ae

    .line 393
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_14

    .line 394
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_77

    .line 396
    :cond_14
    const v1, 0x1020398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 398
    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    .line 399
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_34

    .line 401
    :cond_2d
    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_34
    const v1, 0x102049e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 404
    const v1, 0x10203bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 405
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_a6

    .line 411
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 412
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_9e

    .line 417
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_65

    .line 418
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_77

    .line 419
    :cond_65
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_77

    .line 420
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 424
    :cond_77
    :goto_77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 425
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 426
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8e

    .line 427
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 429
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 430
    goto :goto_96

    .line 433
    :cond_8e
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_96

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 437
    :cond_96
    :goto_96
    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void

    .line 413
    :cond_9e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_a6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setListShown(ZZ)V
    .registers 7

    .line 343
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 344
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_7c

    .line 347
    iget-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_c

    .line 348
    return-void

    .line 350
    :cond_c
    iput-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 351
    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    if-eqz p1, :cond_4a

    .line 352
    if-eqz p2, :cond_35

    .line 353
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 354
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 353
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 356
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 355
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3f

    .line 358
    :cond_35
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 359
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 361
    :goto_3f
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7b

    .line 364
    :cond_4a
    if-eqz p2, :cond_67

    .line 365
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 366
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 365
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 368
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 367
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_71

    .line 370
    :cond_67
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 371
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 373
    :goto_71
    iget-object p1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :goto_7b
    return-void

    .line 345
    :cond_7c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .registers 2

    .line 285
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 286
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .registers 3

    .line 277
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 278
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .registers 2

    .line 269
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 270
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 198
    const p3, 0x1090014

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onDestroyView()V
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 219
    iput-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 220
    iput-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 222
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 236
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 207
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 208
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 209
    return-void
.end method

.method public whitelist setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    .line 295
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 296
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 299
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_17

    .line 301
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 303
    :cond_17
    iput-object p1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 304
    return-void

    .line 297
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t be used with a custom content view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6

    .line 242
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 243
    :goto_9
    iput-object p1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 244
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_28

    .line 245
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    if-nez p1, :cond_28

    if-nez v0, :cond_28

    .line 249
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    invoke-direct {p0, v2, v1}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 252
    :cond_28
    return-void
.end method

.method public whitelist setListShown(Z)V
    .registers 3

    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 322
    return-void
.end method

.method public whitelist setListShownNoAnimation(Z)V
    .registers 3

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 330
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3

    .line 261
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 262
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 263
    return-void
.end method
