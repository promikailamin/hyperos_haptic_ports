.class public final Landroid/app/appfunctions/AppFunctionAttribution$Builder;
.super Ljava/lang/Object;
.source "AppFunctionAttribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionAttribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCustomInteractionType:Ljava/lang/String;

.field private final blacklist mInteractionType:I

.field private blacklist mInteractionUri:Landroid/net/Uri;

.field private blacklist mThreadId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionType:I

    .line 219
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appfunctions/AppFunctionAttribution;
    .registers 9

    .line 283
    iget v0, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionType:I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mCustomInteractionType:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 284
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set customInteractionType since interactionType=INTERACTION_TYPE_OTHER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_11
    :goto_11
    new-instance v2, Landroid/app/appfunctions/AppFunctionAttribution;

    iget v3, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionType:I

    iget-object v4, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mCustomInteractionType:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mThreadId:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionUri:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/appfunctions/AppFunctionAttribution;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/appfunctions/AppFunctionAttribution-IA;)V

    return-object v2
.end method

.method public blacklist setCustomInteractionType(Ljava/lang/String;)Landroid/app/appfunctions/AppFunctionAttribution$Builder;
    .registers 3

    .line 234
    iget v0, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionType:I

    if-nez v0, :cond_d

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mCustomInteractionType:Ljava/lang/String;

    .line 240
    return-object p0

    .line 235
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set customInteractionType because the interaction type is not INTERACTION_TYPE_OTHER"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setInteractionUri(Landroid/net/Uri;)Landroid/app/appfunctions/AppFunctionAttribution$Builder;
    .registers 2

    .line 276
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mInteractionUri:Landroid/net/Uri;

    .line 277
    return-object p0
.end method

.method public blacklist setThreadId(Ljava/lang/String;)Landroid/app/appfunctions/AppFunctionAttribution$Builder;
    .registers 2

    .line 256
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionAttribution$Builder;->mThreadId:Ljava/lang/String;

    .line 257
    return-object p0
.end method
