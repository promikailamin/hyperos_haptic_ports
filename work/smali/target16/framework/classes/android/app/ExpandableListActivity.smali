.class public Landroid/app/ExpandableListActivity;
.super Landroid/app/Activity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mAdapter:Landroid/widget/ExpandableListAdapter;

.field greylist-max-o mFinishedStart:Z

.field greylist-max-o mList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private greylist-max-o ensureList()V
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_5

    .line 274
    return-void

    .line 276
    :cond_5
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setContentView(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListView()Landroid/widget/ExpandableListView;
    .registers 2

    .line 260
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    .line 261
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public whitelist getSelectedId()J
    .registers 3

    .line 285
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedPosition()J
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 7

    .line 186
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onContentChanged()V
    .registers 3

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 222
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    .line 224
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_3c

    .line 229
    if-eqz v0, :cond_20

    .line 230
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 232
    :cond_20
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 233
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 234
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 236
    iget-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    if-eqz v0, :cond_38

    .line 237
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 239
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    .line 240
    return-void

    .line 225
    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 177
    return-void
.end method

.method public whitelist onGroupCollapse(I)V
    .registers 2

    .line 193
    return-void
.end method

.method public whitelist onGroupExpand(I)V
    .registers 2

    .line 199
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 209
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public whitelist setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    .line 246
    monitor-enter p0

    .line 247
    :try_start_1
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    .line 248
    iput-object p1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 249
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 250
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .registers 5

    .line 315
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setSelectedGroup(I)V
    .registers 3

    .line 323
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 324
    return-void
.end method
