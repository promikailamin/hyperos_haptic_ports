.class public final Landroid/app/prediction/AppPredictionManager;
.super Ljava/lang/Object;
.source "AppPredictionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/app/prediction/AppPredictionManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;
    .registers 4

    .line 47
    new-instance v0, Landroid/app/prediction/AppPredictor;

    iget-object v1, p0, Landroid/app/prediction/AppPredictionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/prediction/AppPredictor;-><init>(Landroid/content/Context;Landroid/app/prediction/AppPredictionContext;)V

    return-object v0
.end method
