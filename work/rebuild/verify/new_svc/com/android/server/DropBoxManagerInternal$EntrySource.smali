.class public interface abstract Lcom/android/server/DropBoxManagerInternal$EntrySource;
.super Ljava/lang/Object;
.source "DropBoxManagerInternal.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public close()V
    .registers 1

    .line 0
    return-void
.end method

.method public length()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract writeTo(Ljava/io/FileDescriptor;)V
.end method
