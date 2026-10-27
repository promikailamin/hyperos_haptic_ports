.class public final Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomToggleQueryRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method public constructor blacklist <init>(Lmiui/app/ToggleManagerCompatibility;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/ToggleManagerCompatibility;

    .line 732
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 20

    .line 734
    move-object/from16 v1, p0

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmObjectLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 735
    :try_start_7
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleComponentNames()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 736
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleLabelNames()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 737
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 738
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    iget-object v0, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    .line 740
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v4

    .line 741
    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$smgetUserId(Landroid/content/Context;)I

    move-result v4

    .line 740
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 742
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4d

    monitor-exit v2

    return-void

    .line 743
    :cond_4d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v7, v0

    .line 744
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v8, v0

    .line 745
    .local v8, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 747
    .local v9, "componentName":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v10, v0

    .line 748
    .local v10, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v9}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 749
    .local v11, "spec":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_8a

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_8a

    .line 750
    goto :goto_51

    .line 753
    :cond_8a
    const-string v0, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_94
    .catchall {:try_start_7 .. :try_end_94} :catchall_1a4

    if-nez v0, :cond_97

    .line 754
    goto :goto_51

    .line 757
    :cond_97
    const/high16 v0, 0xc0000

    .line 758
    .local v0, "flags":I
    :try_start_99
    invoke-static {v3, v9}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$smisSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 759
    or-int/lit16 v0, v0, 0x200

    .line 761
    :cond_a1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    int-to-long v13, v0

    iget-object v15, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v15}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v15

    .line 762
    invoke-static {v15}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$smgetUserId(Landroid/content/Context;)I

    move-result v15

    .line 761
    invoke-interface {v12, v9, v13, v14, v15}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    .line 763
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget v13, v12, Landroid/content/pm/ServiceInfo;->icon:I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b6} :catch_142
    .catchall {:try_start_99 .. :try_end_b6} :catchall_1a4

    if-eqz v13, :cond_c3

    :try_start_b8
    iget v13, v12, Landroid/content/pm/ServiceInfo;->icon:I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_1a4

    goto :goto_c7

    .line 776
    .end local v0    # "flags":I
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_bb
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    goto/16 :goto_148

    .line 764
    .restart local v0    # "flags":I
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_c3
    :try_start_c3
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_c7
    nop

    .line 766
    .local v13, "icon":I
    nop

    .line 767
    invoke-static {v8, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 768
    .local v14, "iconDrawable":Landroid/graphics/drawable/Icon;
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v15, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d3} :catch_142
    .catchall {:try_start_c3 .. :try_end_d3} :catchall_1a4

    .line 769
    .local v15, "label":Ljava/lang/CharSequence;
    if-eqz v14, :cond_134

    if-nez v15, :cond_df

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    goto :goto_13b

    .line 770
    :cond_df
    :try_start_df
    invoke-static {v11}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$smgetMd5Num(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v5, v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 771
    .local v5, "id":Ljava/lang/Integer;
    move/from16 v17, v0

    .end local v0    # "flags":I
    .local v17, "flags":I
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleComponentNames()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleLabelNames()Ljava/util/HashMap;

    move-result-object v0
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f6} :catch_12d
    .catchall {:try_start_df .. :try_end_f6} :catchall_1a4

    move-object/from16 v18, v3

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    :try_start_f8
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleStatus()Ljava/util/HashMap;

    move-result-object v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_10a} :catch_128
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_1a4

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v16, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_10d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleImages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_125} :catch_126
    .catchall {:try_start_10d .. :try_end_125} :catchall_1a4

    .line 778
    .end local v5    # "id":Ljava/lang/Integer;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "icon":I
    .end local v14    # "iconDrawable":Landroid/graphics/drawable/Icon;
    .end local v15    # "label":Ljava/lang/CharSequence;
    .end local v17    # "flags":I
    goto :goto_14b

    .line 776
    :catch_126
    move-exception v0

    goto :goto_148

    .end local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_128
    move-exception v0

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_148

    .end local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_12d
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    goto :goto_148

    .line 769
    .restart local v0    # "flags":I
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "icon":I
    .restart local v14    # "iconDrawable":Landroid/graphics/drawable/Icon;
    .restart local v15    # "label":Ljava/lang/CharSequence;
    :cond_134
    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    .end local v0    # "flags":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "flags":I
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_13b
    move v5, v3

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    goto/16 :goto_51

    .line 776
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "icon":I
    .end local v14    # "iconDrawable":Landroid/graphics/drawable/Icon;
    .end local v15    # "label":Ljava/lang/CharSequence;
    .end local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "flags":I
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_142
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    .line 777
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_148
    :try_start_148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "appLabel":Ljava/lang/CharSequence;
    .end local v11    # "spec":Ljava/lang/String;
    :goto_14b
    move v5, v3

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    goto/16 :goto_51

    .line 780
    .end local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_152
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 781
    .local v0, "toggles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_168
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 782
    .local v4, "customId":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17d

    .line 783
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v4    # "customId":Ljava/lang/Integer;
    :cond_17d
    goto :goto_168

    .line 786
    :cond_17e
    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {v3, v0}, Lmiui/app/ToggleManagerCompatibility;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 787
    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v3}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmHandler(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;

    invoke-direct {v4, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v3}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmHandler(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;

    invoke-direct {v4, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 801
    nop

    .end local v0    # "toggles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    monitor-exit v2

    .line 802
    return-void

    .line 801
    :catchall_1a4
    move-exception v0

    monitor-exit v2
    :try_end_1a6
    .catchall {:try_start_148 .. :try_end_1a6} :catchall_1a4

    throw v0
.end method
