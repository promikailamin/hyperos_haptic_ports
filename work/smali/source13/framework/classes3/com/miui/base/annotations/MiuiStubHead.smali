.class public interface abstract annotation Lcom/miui/base/annotations/MiuiStubHead;
.super Ljava/lang/Object;
.source "MiuiStubHead.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/miui/base/annotations/MiuiStubHead;
        classPath = ""
        internal = false
        manifestName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist classPath()Ljava/lang/String;
.end method

.method public abstract blacklist internal()Z
.end method

.method public abstract blacklist manifestName()Ljava/lang/String;
.end method
