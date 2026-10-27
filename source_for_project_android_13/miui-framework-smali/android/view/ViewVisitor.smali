.class public Landroid/view/ViewVisitor;
.super Ljava/lang/Object;
.source "ViewVisitor.java"


# static fields
.field private static final blacklist AttachInfo_mLastMirrorShadowX:Ljava/lang/reflect/Field;

.field private static final blacklist AttachInfo_mLastMirrorShadowY:Ljava/lang/reflect/Field;

.field private static final blacklist AttachInfo_mMirrorDragToken:Ljava/lang/reflect/Field;

.field private static final blacklist TAG:Ljava/lang/String; = "ViewVisitor"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 20
    const-string v0, "ViewVisitor"

    const/4 v1, 0x0

    .line 22
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_3
    const-class v2, Landroid/view/View$AttachInfo;

    const-string v3, "mMirrorDragToken"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_b} :catch_d

    move-object v1, v2

    .line 25
    goto :goto_13

    .line 23
    :catch_d
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "mMirrorDragToken not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_13
    sput-object v1, Landroid/view/ViewVisitor;->AttachInfo_mMirrorDragToken:Ljava/lang/reflect/Field;

    .line 27
    const/4 v1, 0x0

    .line 29
    :try_start_16
    const-class v2, Landroid/view/View$AttachInfo;

    const-string v3, "mLastMirrorShadowX"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 32
    goto :goto_26

    .line 30
    :catch_20
    move-exception v2

    .line 31
    .restart local v2    # "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "mLastMirrorShadowX not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_26
    sput-object v1, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowX:Ljava/lang/reflect/Field;

    .line 34
    const/4 v1, 0x0

    .line 36
    :try_start_29
    const-class v2, Landroid/view/View$AttachInfo;

    const-string v3, "mLastMirrorShadowY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_31} :catch_33

    move-object v1, v0

    .line 39
    goto :goto_39

    .line 37
    :catch_33
    move-exception v2

    .line 38
    .restart local v2    # "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "mLastMirrorShadowY not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_39
    sput-object v1, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowY:Ljava/lang/reflect/Field;

    .line 41
    .end local v1    # "field":Ljava/lang/reflect/Field;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleanDragToken(Ljava/lang/Object;)V
    .registers 4
    .param p0, "attachInfo"    # Ljava/lang/Object;

    .line 80
    :try_start_0
    sget-object v0, Landroid/view/ViewVisitor;->AttachInfo_mMirrorDragToken:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 83
    goto :goto_f

    .line 81
    :catch_7
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewVisitor"

    const-string v2, "clean mMirrorDragToken failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method

.method public static blacklist getDragToken(Ljava/lang/Object;)Landroid/os/IBinder;
    .registers 4
    .param p0, "attachInfo"    # Ljava/lang/Object;

    .line 71
    :try_start_0
    sget-object v0, Landroid/view/ViewVisitor;->AttachInfo_mMirrorDragToken:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 72
    :catch_9
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewVisitor"

    const-string v2, "get mMirrorDragToken failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getLastMirrorShadowX(Ljava/lang/Object;)I
    .registers 4
    .param p0, "attachInfo"    # Ljava/lang/Object;

    .line 88
    :try_start_0
    sget-object v0, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowX:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 89
    :catch_d
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewVisitor"

    const-string v2, "get mLastMirrorShadowX failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getLastMirrorShadowY(Ljava/lang/Object;)I
    .registers 4
    .param p0, "attachInfo"    # Ljava/lang/Object;

    .line 97
    :try_start_0
    sget-object v0, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowY:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 98
    :catch_d
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewVisitor"

    const-string v2, "get mLastMirrorShadowY failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getWindow(Ljava/lang/Object;)Landroid/view/IWindow;
    .registers 2
    .param p0, "attachInfo"    # Ljava/lang/Object;

    .line 44
    move-object v0, p0

    check-cast v0, Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    return-object v0
.end method

.method public static blacklist setMirrorDragState(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/Object;Landroid/graphics/Point;)V
    .registers 8
    .param p0, "attachInfo"    # Ljava/lang/Object;
    .param p1, "mirrorDragToken"    # Landroid/os/IBinder;
    .param p2, "myLocalState"    # Ljava/lang/Object;
    .param p3, "shadowSize"    # Landroid/graphics/Point;

    .line 49
    const-string v0, "ViewVisitor"

    move-object v1, p0

    check-cast v1, Landroid/view/View$AttachInfo;

    .line 51
    .local v1, "info":Landroid/view/View$AttachInfo;
    :try_start_5
    sget-object v2, Landroid/view/ViewVisitor;->AttachInfo_mMirrorDragToken:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 54
    goto :goto_11

    .line 52
    :catch_b
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "set mMirrorDragToken failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 58
    :try_start_16
    sget-object v2, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowX:Ljava/lang/reflect/Field;

    iget v3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 61
    goto :goto_24

    .line 59
    :catch_1e
    move-exception v2

    .line 60
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "set mLastMirrorShadowX failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_24
    :try_start_24
    sget-object v2, Landroid/view/ViewVisitor;->AttachInfo_mLastMirrorShadowY:Ljava/lang/reflect/Field;

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 66
    goto :goto_32

    .line 64
    :catch_2c
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "set mLastMirrorShadowY failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method
