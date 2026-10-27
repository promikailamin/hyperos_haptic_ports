.class Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;
.super Landroid/os/ShellCommand;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 112
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private printAllApexs()I
    .registers 13

    .line 162
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 163
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 167
    .local v2, "verbose":Z
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_18

    .line 168
    const-string v0, "ERROR: Failed to refresh info for APEXs."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return v4

    .line 171
    :cond_18
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_12c

    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_12c

    .line 176
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v3, :cond_6a

    .line 177
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_132

    :cond_41
    goto :goto_4b

    :pswitch_42
    const-string v3, "-v"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4c

    :goto_4b
    move v6, v4

    :goto_4c
    packed-switch v6, :pswitch_data_138

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    return v0

    .line 179
    :pswitch_67
    const/4 v2, 0x1

    .line 180
    nop

    .line 183
    goto :goto_32

    .line 187
    :cond_6a
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 188
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_7e

    .line 189
    const-string v0, "ERROR: Failed to obtain an instance of package manager."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return v4

    .line 193
    :cond_7e
    const-string v4, "APEX Info:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v4, v4, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v4}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 195
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 197
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v10, v10, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v10}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v10

    .line 198
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    if-eqz v2, :cond_129

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install location: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last Update Time (ms): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :try_start_10b
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v6}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v9
    :try_end_111
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_111} :catch_11e

    .line 212
    .local v9, "moduleInfo":Landroid/content/pm/ModuleInfo;
    nop

    .line 213
    const-string v10, "Is A Module: True"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, v9, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_129

    .line 208
    .end local v9    # "moduleInfo":Landroid/content/pm/ModuleInfo;
    :catch_11e
    move-exception v9

    .line 209
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "Is A Module: False"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    goto/16 :goto_8f

    .line 217
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_129
    :goto_129
    goto/16 :goto_8f

    .line 218
    :cond_12b
    return v6

    .line 172
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "opt":Ljava/lang/String;
    :cond_12c
    :goto_12c
    const-string v0, "ERROR: Unable to obtain apex_info at this time."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    return v4

    :pswitch_data_132
    .packed-switch 0x5e9
        :pswitch_42
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_67
    .end packed-switch
.end method

.method private printAllModules()I
    .registers 14

    .line 222
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 223
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 227
    .local v2, "verbose":Z
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_18

    .line 228
    const-string v0, "ERROR: Failed to refresh info for Modules."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    return v4

    .line 231
    :cond_18
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_125

    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_125

    .line 236
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v3, :cond_6a

    .line 237
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_12c

    :cond_41
    goto :goto_4b

    :pswitch_42
    const-string v3, "-v"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4c

    :goto_4b
    move v6, v4

    :goto_4c
    packed-switch v6, :pswitch_data_132

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    return v0

    .line 239
    :pswitch_67
    const/4 v2, 0x1

    .line 240
    nop

    .line 243
    goto :goto_32

    .line 247
    :cond_6a
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 248
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_7e

    .line 249
    const-string v0, "ERROR: Failed to obtain an instance of package manager."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return v4

    .line 253
    :cond_7e
    const-string v4, "Module Info:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ModuleInfo;

    .line 255
    .local v7, "module":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "packageName":Ljava/lang/String;
    const/high16 v9, 0x40000000    # 2.0f

    :try_start_9f
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 259
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 260
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v11, v11, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v11}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v11

    .line 261
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 259
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    if-eqz v2, :cond_101

    .line 264
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Install location: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v7, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 267
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9f .. :try_end_101} :catch_103

    .line 277
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_101
    nop

    .line 278
    .end local v7    # "module":Landroid/content/pm/ModuleInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_8d

    .line 269
    .restart local v7    # "module":Landroid/content/pm/ModuleInfo;
    .restart local v8    # "packageName":Ljava/lang/String;
    :catch_103
    move-exception v9

    .line 270
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";ERROR:Unable to find PackageInfo for this module."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    if-eqz v2, :cond_122

    .line 273
    invoke-direct {p0, v7, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 274
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :cond_122
    goto/16 :goto_8d

    .line 279
    .end local v7    # "module":Landroid/content/pm/ModuleInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_124
    return v6

    .line 232
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "opt":Ljava/lang/String;
    :cond_125
    :goto_125
    const-string v0, "ERROR: Unable to obtain module_info at this time."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return v4

    nop

    :pswitch_data_12c
    .packed-switch 0x5e9
        :pswitch_42
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_67
    .end packed-switch
.end method

.method private printHelpMenu()V
    .registers 4

    .line 316
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 317
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Transparency manager (transparency) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    const-string v1, "    help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string v1, "        Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const-string v2, "    get image_info [-a]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const-string v2, "        Print information about loaded image (firmware). Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string v2, "            -a: lists all other identifiable partitions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const-string v2, "    get apex_info [-v]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    const-string v2, "        Print information about installed APEXs on device."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    const-string v2, "            -v: lists more verbose information about each APEX"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const-string v2, "    get module_info [-v]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v2, "        Print information about installed modules on device."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const-string v2, "            -v: lists more verbose information about each module"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "moduleInfo"    # Landroid/content/pm/ModuleInfo;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 155
    const-string v0, "--- Module Details ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "hidden"

    goto :goto_37

    :cond_34
    const-string/jumbo v1, "visible"

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private printSignedImageInfo()I
    .registers 13

    .line 115
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 116
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 119
    .local v1, "listAllPartitions":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_3e

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_d6

    :cond_15
    goto :goto_1f

    :pswitch_16
    const-string v2, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_20

    :goto_1f
    move v4, v5

    :goto_20
    packed-switch v4, :pswitch_data_dc

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x1

    return v2

    .line 122
    :pswitch_3b
    const/4 v1, 0x1

    .line 123
    nop

    .line 126
    goto :goto_5

    .line 130
    :cond_3e
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "signedImageInfo":Ljava/lang/String;
    const-string v6, "Image Info:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    if-eqz v1, :cond_d4

    .line 137
    iget-object v6, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v6, v6, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v6}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 138
    .local v6, "pm":Landroid/content/pm/PackageManager;
    if-nez v6, :cond_6c

    .line 139
    const-string v4, "ERROR: Failed to obtain an instance of package manager."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return v5

    .line 143
    :cond_6c
    const-string v5, "Other partitions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/Build;->getFingerprintedPartitions()Ljava/util/List;

    move-result-object v5

    .line 145
    .local v5, "buildPartitions":Ljava/util/List;, "Ljava/util/List<Landroid/os/Build$Partition;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Build$Partition;

    .line 146
    .local v8, "buildPartition":Landroid/os/Build$Partition;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/os/Build$Partition;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fingerprint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/os/Build$Partition;->getFingerprint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build time (ms): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/os/Build$Partition;->getBuildTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .end local v8    # "buildPartition":Landroid/os/Build$Partition;
    goto :goto_79

    .line 151
    .end local v5    # "buildPartitions":Ljava/util/List;, "Ljava/util/List<Landroid/os/Build$Partition;>;"
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_d4
    return v4

    nop

    :pswitch_data_d6
    .packed-switch 0x5d4
        :pswitch_16
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 284
    if-nez p1, :cond_7

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 289
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_7a

    :cond_14
    goto :goto_1f

    :pswitch_15
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_20

    :goto_1f
    move v1, v3

    :goto_20
    packed-switch v1, :pswitch_data_80

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 291
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "infoType":Ljava/lang/String;
    if-nez v1, :cond_32

    .line 293
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    .line 294
    return v3

    .line 297
    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_86

    :cond_3a
    goto :goto_5a

    :sswitch_3b
    const-string v4, "apex_info"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v5

    goto :goto_5a

    :sswitch_45
    const-string/jumbo v4, "module_info"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v3, 0x2

    goto :goto_5a

    :sswitch_50
    const-string/jumbo v4, "image_info"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v2

    :goto_5a
    packed-switch v3, :pswitch_data_94

    .line 305
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v2, "ERROR: Unknown info type \'%s\'"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    return v5

    .line 303
    :pswitch_6b
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAllModules()I

    move-result v2

    return v2

    .line 301
    :pswitch_70
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAllApexs()I

    move-result v2

    return v2

    .line 299
    :pswitch_75
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printSignedImageInfo()I

    move-result v2

    return v2

    :pswitch_data_7a
    .packed-switch 0x18f56
        :pswitch_15
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch

    :sswitch_data_86
    .sparse-switch
        -0x5603eaee -> :sswitch_50
        -0x473c655f -> :sswitch_45
        0x5178b9ab -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_75
        :pswitch_70
        :pswitch_6b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 1

    .line 337
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    .line 338
    return-void
.end method
