.class public final Landroid/app/search/SearchUiManager;
.super Ljava/lang/Object;
.source "SearchUiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/app/search/SearchUiManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist createSearchSession(Landroid/app/search/SearchContext;)Landroid/app/search/SearchSession;
    .registers 4

    .line 54
    new-instance v0, Landroid/app/search/SearchSession;

    iget-object v1, p0, Landroid/app/search/SearchUiManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/search/SearchSession;-><init>(Landroid/content/Context;Landroid/app/search/SearchContext;)V

    return-object v0
.end method
