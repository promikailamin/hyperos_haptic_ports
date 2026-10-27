.class public Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;
.super Ljava/lang/Object;
.source "HapticSupport.java"


# static fields
.field private static final blacklist sHapticTable:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsHapticTable()[I
    .registers 1

    sget-object v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->sHapticTable:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->sHapticTable:[I

    .line 52
    return-void

    :array_a
    .array-data 4
        -0x1
        0x0
        0x1
        0x3
        0x4
        0x6
        0x3
        0x7
        0x8
        0x9
        0xc
        0xd
        0x10
        0x11
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setupHaptics(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
    .registers 3

    .line 60
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 68
    return-void
.end method
