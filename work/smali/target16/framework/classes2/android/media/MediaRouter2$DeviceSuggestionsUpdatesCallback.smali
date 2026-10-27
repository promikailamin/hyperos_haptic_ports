.class public interface abstract Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceSuggestionsUpdatesCallback"
.end annotation


# virtual methods
.method public abstract whitelist onSuggestionsCleared(Ljava/lang/String;)V
.end method

.method public abstract whitelist onSuggestionsRequested()V
.end method

.method public abstract whitelist onSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method
