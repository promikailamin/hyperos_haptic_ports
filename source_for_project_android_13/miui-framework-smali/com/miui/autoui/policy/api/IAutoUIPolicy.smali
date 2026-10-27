.class public interface abstract Lcom/miui/autoui/policy/api/IAutoUIPolicy;
.super Ljava/lang/Object;
.source "IAutoUIPolicy.java"


# virtual methods
.method public abstract blacklist getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;
.end method

.method public abstract blacklist getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;
.end method

.method public abstract blacklist getLayoutPolicy()Lcom/miui/autoui/policy/api/IAutoUILayout;
.end method

.method public abstract blacklist getMeasurePolicy()Lcom/miui/autoui/policy/api/IAutoUIMeasure;
.end method

.method public abstract blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
.end method
