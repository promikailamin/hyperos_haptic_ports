.class public final Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;
.super Ljava/lang/Object;
.source "ActionRequestProcessor.java"


# instance fields
.field public final mAssociationIdFilter:Ljava/util/Set;

.field public final mListener:Landroid/companion/IOnActionResultListener;

.field public final mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/companion/IOnActionResultListener;Ljava/util/Set;)V
    .registers 4

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mServiceName:Ljava/lang/String;

    .line 348
    iput-object p2, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mListener:Landroid/companion/IOnActionResultListener;

    .line 349
    iput-object p3, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mAssociationIdFilter:Ljava/util/Set;

    return-void
.end method
