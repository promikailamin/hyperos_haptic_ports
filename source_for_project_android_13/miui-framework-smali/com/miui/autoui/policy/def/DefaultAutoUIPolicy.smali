.class public Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.super Ljava/lang/Object;
.source "DefaultAutoUIPolicy.java"

# interfaces
.implements Lcom/miui/autoui/policy/api/IAutoUIPolicy;


# instance fields
.field protected blacklist mAutoUIDraw:Lcom/miui/autoui/policy/api/IAutoUIDraw;

.field protected blacklist mAutoUIEvent:Lcom/miui/autoui/policy/api/IAutoUIEvent;

.field protected blacklist mAutoUILayout:Lcom/miui/autoui/policy/api/IAutoUILayout;

.field protected blacklist mAutoUIMeasure:Lcom/miui/autoui/policy/api/IAutoUIMeasure;


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 19
    new-instance v0, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V
    .registers 5
    .param p1, "autoUIMeasure"    # Lcom/miui/autoui/policy/api/IAutoUIMeasure;
    .param p2, "autoUILayout"    # Lcom/miui/autoui/policy/api/IAutoUILayout;
    .param p3, "autoUIDraw"    # Lcom/miui/autoui/policy/api/IAutoUIDraw;
    .param p4, "autoUIEvent"    # Lcom/miui/autoui/policy/api/IAutoUIEvent;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIMeasure:Lcom/miui/autoui/policy/api/IAutoUIMeasure;

    .line 26
    iput-object p2, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUILayout:Lcom/miui/autoui/policy/api/IAutoUILayout;

    .line 27
    iput-object p3, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIDraw:Lcom/miui/autoui/policy/api/IAutoUIDraw;

    .line 28
    iput-object p4, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIEvent:Lcom/miui/autoui/policy/api/IAutoUIEvent;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIDraw:Lcom/miui/autoui/policy/api/IAutoUIDraw;

    return-object v0
.end method

.method public blacklist getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIEvent:Lcom/miui/autoui/policy/api/IAutoUIEvent;

    return-object v0
.end method

.method public blacklist getLayoutPolicy()Lcom/miui/autoui/policy/api/IAutoUILayout;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUILayout:Lcom/miui/autoui/policy/api/IAutoUILayout;

    return-object v0
.end method

.method public blacklist getMeasurePolicy()Lcom/miui/autoui/policy/api/IAutoUIMeasure;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;->mAutoUIMeasure:Lcom/miui/autoui/policy/api/IAutoUIMeasure;

    return-object v0
.end method

.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 34
    return-void
.end method
