.class public interface abstract annotation Lcom/miui/base/annotations/MiuiStubImpl;
.super Ljava/lang/Object;
.source "MiuiStubImpl.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/miui/base/annotations/MiuiStubImpl;
        baseClass = Ljava/lang/Object;
        singleton = -0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final blacklist MANIFEST:Ljava/lang/String; = "com.miui.base.MiuiStubImplManifest$$"


# virtual methods
.method public abstract blacklist baseClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist singleton()I
.end method
