.class public final Landroid/companion/ActionRequest$Builder;
.super Ljava/lang/Object;
.source "ActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mOperation:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Landroid/companion/ActionRequest$Builder;->mAction:I

    .line 191
    iput p2, p0, Landroid/companion/ActionRequest$Builder;->mOperation:I

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/ActionRequest;
    .registers 5

    .line 198
    new-instance v0, Landroid/companion/ActionRequest;

    iget v1, p0, Landroid/companion/ActionRequest$Builder;->mAction:I

    iget v2, p0, Landroid/companion/ActionRequest$Builder;->mOperation:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/ActionRequest;-><init>(IILandroid/companion/ActionRequest-IA;)V

    return-object v0
.end method
