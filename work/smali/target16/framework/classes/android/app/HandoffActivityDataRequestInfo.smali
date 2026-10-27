.class public final Landroid/app/HandoffActivityDataRequestInfo;
.super Ljava/lang/Object;
.source "HandoffActivityDataRequestInfo.java"


# instance fields
.field private blacklist mIsActiveRequest:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Landroid/app/HandoffActivityDataRequestInfo;->mIsActiveRequest:Z

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist isActiveRequest()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Landroid/app/HandoffActivityDataRequestInfo;->mIsActiveRequest:Z

    return v0
.end method
