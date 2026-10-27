.class Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public blacklist badge:Landroid/widget/ImageView;

.field public blacklist icon:Landroid/widget/ImageView;

.field public blacklist text:Landroid/widget/TextView;

.field public blacklist text2:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text:Landroid/widget/TextView;

    .line 525
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->text2:Landroid/widget/TextView;

    .line 526
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 527
    const v0, 0x110a00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$ViewHolder;->badge:Landroid/widget/ImageView;

    .line 528
    return-void
.end method
