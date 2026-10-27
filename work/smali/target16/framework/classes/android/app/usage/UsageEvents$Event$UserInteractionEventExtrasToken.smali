.class public Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInteractionEventExtrasToken"
.end annotation


# instance fields
.field public blacklist mActionToken:I

.field public blacklist mCategoryToken:I

.field public blacklist mTokenizedExtras:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    .line 563
    iput v0, p0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mTokenizedExtras:[B

    .line 569
    return-void
.end method
