--
-- This file is part of AXE Ninja.
-- https://github.com/axerunners/axeninja-db
--
-- AXE Ninja is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- AXE Ninja is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with AXE Ninja.  If not, see <http://www.gnu.org/licenses/>.
--

-- Execute this MySQL script to update your Database from v13 to v14

--
-- Update blocks table to add block version info
--

ALTER TABLE `cmd_info_blocks` ADD `BlockVersion` INT NOT NULL DEFAULT '0' AFTER `SuperblockBudgetAmount`;

--
-- Update database version in config table
--

UPDATE `cmd_config` SET `ConfigValue` = '14' WHERE `cmd_config`.`ConfigKey` = 'DataBaseVersion';
