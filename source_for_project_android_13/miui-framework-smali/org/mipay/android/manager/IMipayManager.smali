.class public interface abstract Lorg/mipay/android/manager/IMipayManager;
.super Ljava/lang/Object;
.source "IMipayManager.java"


# virtual methods
.method public abstract blacklist contains(Ljava/lang/String;)Z
.end method

.method public abstract blacklist generateKeyPair(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract blacklist getFpIds()Ljava/lang/String;
.end method

.method public abstract blacklist getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract blacklist getVersion()I
.end method

.method public abstract blacklist removeAllKey()I
.end method

.method public abstract blacklist sign()[B
.end method

.method public abstract blacklist signInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract blacklist signUpdate([BII)I
.end method
