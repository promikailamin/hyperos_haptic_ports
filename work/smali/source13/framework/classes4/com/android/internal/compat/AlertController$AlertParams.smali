.class public abstract Lcom/android/internal/compat/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AlertParams"
.end annotation


# instance fields
.field public blacklist mAdapter:Landroid/widget/ListAdapter;

.field public blacklist mCancelable:Z

.field public blacklist mCheckedItem:I

.field public blacklist mCheckedItems:[Z

.field public blacklist mContext:Landroid/content/Context;

.field public blacklist mCursor:Landroid/database/Cursor;

.field public blacklist mCustomTitleView:Landroid/view/View;

.field public blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field public blacklist mIconId:I

.field public blacklist mInflater:Landroid/view/LayoutInflater;

.field public blacklist mIsCheckedColumn:Ljava/lang/String;

.field public blacklist mIsMultiChoice:Z

.field public blacklist mIsSingleChoice:Z

.field public blacklist mItems:[Ljava/lang/CharSequence;

.field public blacklist mLabelColumn:Ljava/lang/String;

.field public blacklist mMessage:Ljava/lang/CharSequence;

.field public blacklist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field public blacklist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public blacklist mNeutralButtonText:Ljava/lang/CharSequence;

.field public blacklist mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public blacklist mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public blacklist mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public blacklist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public blacklist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public blacklist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public blacklist mPositiveButtonText:Ljava/lang/CharSequence;

.field public blacklist mTitle:Ljava/lang/CharSequence;

.field public blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/compat/AlertController$AlertParams;->mCheckedItem:I

    .line 73
    return-void
.end method


# virtual methods
.method public abstract blacklist apply(Lcom/android/internal/compat/AlertController;)V
.end method
