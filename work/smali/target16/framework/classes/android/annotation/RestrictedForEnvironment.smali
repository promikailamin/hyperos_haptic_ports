.class public interface abstract annotation Landroid/annotation/RestrictedForEnvironment;
.super Ljava/lang/Object;
.source "RestrictedForEnvironment.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/RestrictedForEnvironment$Container;,
        Landroid/annotation/RestrictedForEnvironment$Environment;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroid/annotation/RestrictedForEnvironment$Container;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final blacklist ENVIRONMENT_SDK_RUNTIME:Ljava/lang/String; = "SDK Runtime"


# virtual methods
.method public abstract blacklist environments()[Ljava/lang/String;
.end method

.method public abstract blacklist from()I
.end method
