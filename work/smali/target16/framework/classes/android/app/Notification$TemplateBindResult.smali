.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$TemplateBindResult$MarginSet;
    }
.end annotation


# instance fields
.field public final blacklist mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field public final blacklist mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field blacklist mRightIconHeightDp:F

.field blacklist mRightIconVisible:Z

.field blacklist mRightIconWidthDp:F

.field public final blacklist mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 16352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16363
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 16370
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 16377
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist calculateMargins(FFF)V
    .registers 7

    .line 16387
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 16390
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p2, p3

    add-float/2addr p1, p2

    add-float/2addr p3, p1

    invoke-virtual {v0, v2, p3}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 16394
    iget-object p2, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-virtual {p2, v1, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 16397
    return-void
.end method

.method public blacklist setRightIconState(ZFF)V
    .registers 4

    .line 16380
    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    .line 16381
    iput p2, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    .line 16382
    iput p3, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    .line 16383
    return-void
.end method
