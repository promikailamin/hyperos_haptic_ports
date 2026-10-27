.class public interface abstract Landroid/media/MediaRouter2$SystemSessionOverridesListener;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemSessionOverridesListener"
.end annotation


# virtual methods
.method public abstract blacklist onSystemSessionOverridesChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/media/AppId;",
            ">;)V"
        }
    .end annotation
.end method
