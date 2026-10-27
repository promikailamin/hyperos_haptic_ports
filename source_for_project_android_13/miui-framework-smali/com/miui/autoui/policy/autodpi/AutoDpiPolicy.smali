.class public Lcom/miui/autoui/policy/autodpi/AutoDpiPolicy;
.super Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;
.source "AutoDpiPolicy.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AutoUI_AutoDpiPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 13
    new-instance v0, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;

    invoke-direct {v0}, Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;-><init>()V

    new-instance v1, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;

    invoke-direct {v1}, Lcom/miui/autoui/policy/def/DefaultAutoUILayout;-><init>()V

    new-instance v2, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;

    invoke-direct {v2}, Lcom/miui/autoui/policy/def/DefaultAutoUIDraw;-><init>()V

    new-instance v3, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;

    invoke-direct {v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIEvent;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>(Lcom/miui/autoui/policy/api/IAutoUIMeasure;Lcom/miui/autoui/policy/api/IAutoUILayout;Lcom/miui/autoui/policy/api/IAutoUIDraw;Lcom/miui/autoui/policy/api/IAutoUIEvent;)V

    .line 15
    return-void
.end method
