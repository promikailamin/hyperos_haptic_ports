.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public greylist mAdapter:Landroid/widget/ListAdapter;

.field public greylist mCancelable:Z

.field public greylist mCheckedItem:I

.field public greylist mCheckedItems:[Z

.field public final greylist mContext:Landroid/content/Context;

.field public greylist mCursor:Landroid/database/Cursor;

.field public greylist mCustomTitleView:Landroid/view/View;

.field public greylist-max-o mForceInverseBackground:Z

.field public greylist mIcon:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mIconAttrId:I

.field public greylist mIconId:I

.field public final greylist mInflater:Landroid/view/LayoutInflater;

.field public greylist mIsCheckedColumn:Ljava/lang/String;

.field public greylist mIsMultiChoice:Z

.field public greylist mIsSingleChoice:Z

.field public greylist mItems:[Ljava/lang/CharSequence;

.field public greylist mLabelColumn:Ljava/lang/String;

.field public greylist mMessage:Ljava/lang/CharSequence;

.field public greylist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNegativeButtonText:Ljava/lang/CharSequence;

.field public greylist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNeutralButtonText:Ljava/lang/CharSequence;

.field public greylist mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public greylist mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public greylist mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public greylist-max-o mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public greylist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mPositiveButtonText:Ljava/lang/CharSequence;

.field public greylist-max-o mRecycleOnMeasure:Z

.field public greylist mTitle:Ljava/lang/CharSequence;

.field public greylist mView:Landroid/view/View;

.field public greylist-max-o mViewLayoutResId:I

.field public greylist-max-o mViewSpacingBottom:I

.field public greylist-max-o mViewSpacingLeft:I

.field public greylist-max-o mViewSpacingRight:I

.field public greylist-max-o mViewSpacingSpecified:Z

.field public greylist-max-o mViewSpacingTop:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 1033
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1073
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1080
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1111
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1112
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 1113
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1114
    return-void
.end method

.method private greylist-max-o createListView(Lcom/android/internal/app/AlertController;)V
    .registers 13
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1178
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .line 1179
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1182
    .local v0, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_37

    .line 1183
    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2a

    .line 1184
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_75

    .line 1199
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2a
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_75

    .line 1228
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_37
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_40

    .line 1229
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .local v1, "layout":I
    goto :goto_44

    .line 1231
    .end local v1    # "layout":I
    :cond_40
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .line 1234
    .restart local v1    # "layout":I
    :goto_44
    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-eqz v5, :cond_62

    .line 1235
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    new-array v10, v8, [I

    aput v2, v10, v7

    move-object v2, v9

    move v4, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "adapter":Landroid/widget/ListAdapter;
    goto :goto_75

    .line 1237
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_62
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_6a

    .line 1238
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_75

    .line 1240
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_6a
    new-instance v3, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v2, v3

    move-object v1, v2

    .line 1244
    .local v1, "adapter":Landroid/widget/ListAdapter;
    :goto_75
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_7c

    .line 1245
    invoke-interface {v2, v0}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1251
    :cond_7c
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V

    .line 1252
    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v2}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V

    .line 1254
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_91

    .line 1255
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_9d

    .line 1264
    :cond_91
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_9d

    .line 1265
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1278
    :cond_9d
    :goto_9d
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_a4

    .line 1279
    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1282
    :cond_a4
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_ac

    .line 1283
    invoke-virtual {v0, v8}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_b4

    .line 1284
    :cond_ac
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_b4

    .line 1285
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1287
    :cond_b4
    :goto_b4
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1288
    iput-object v0, p1, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1289
    return-void
.end method


# virtual methods
.method public greylist apply(Lcom/android/internal/app/AlertController;)V
    .registers 9
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1118
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1119
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_28

    .line 1121
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 1122
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_f
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 1125
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    :cond_16
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_1d

    .line 1128
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1130
    :cond_1d
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_28

    .line 1131
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1134
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    .line 1135
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1137
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 1138
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1141
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_44

    .line 1142
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1145
    :cond_44
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4e

    .line 1146
    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1149
    :cond_4e
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_56

    .line 1150
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1154
    :cond_56
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_65

    .line 1155
    :cond_62
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1157
    :cond_65
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_7e

    .line 1158
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_7a

    .line 1159
    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_85

    .line 1162
    :cond_7a
    invoke-virtual {p1, v2}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_85

    .line 1164
    :cond_7e
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_85

    .line 1165
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 1175
    :cond_85
    :goto_85
    return-void
.end method
