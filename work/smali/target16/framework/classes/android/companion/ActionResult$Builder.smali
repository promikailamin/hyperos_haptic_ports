.class public final Landroid/companion/ActionResult$Builder;
.super Ljava/lang/Object;
.source "ActionResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActionRequest:Landroid/companion/ActionRequest;

.field private blacklist mResultCode:I


# direct methods
.method public constructor blacklist <init>(Landroid/companion/ActionRequest;I)V
    .registers 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-string v0, "ActionRequest cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Landroid/companion/ActionResult$Builder;->mActionRequest:Landroid/companion/ActionRequest;

    .line 148
    iput p2, p0, Landroid/companion/ActionResult$Builder;->mResultCode:I

    .line 149
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/ActionResult;
    .registers 5

    .line 156
    new-instance v0, Landroid/companion/ActionResult;

    iget-object v1, p0, Landroid/companion/ActionResult$Builder;->mActionRequest:Landroid/companion/ActionRequest;

    iget v2, p0, Landroid/companion/ActionResult$Builder;->mResultCode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/ActionResult;-><init>(Landroid/companion/ActionRequest;ILandroid/companion/ActionResult-IA;)V

    return-object v0
.end method
